#!/bin/bash

# se positionner dans le répertoire contenant install.sh et le fichier .tar.gz
# exécuter la commande : sudo sh install.sh

APPLI=kalkulo
VERSION=2.10

[ "`whoami`" != 'root' ] && { echo vous devez exécuter : sudo sh install.sh ; exit ; }

# vérification des dépendances
perl -e '' 2>/dev/null ; [ $? != "0" ] && { echo "vous devez d'abbord installer : perl" ; exit ; }

ERROR=''
perl -e 'use Tk'        2>/dev/null ; [ $? != "0" ] && ERROR=$ERROR"perl-tk   "
perl -e 'use Net::Kalk' 2>/dev/null ; [ $? != "0" ] && ERROR=$ERROR"facila/Net-Kalk"
[ "$ERROR" != '' ] && { echo "vous devez d'abbord installer : $ERROR" ; exit ; }

FILE=$APPLI.$VERSION.tar.gz
echo installation de facila $FILE
tar -xzf $FILE -C /

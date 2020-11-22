#!/bin/bash

# se positionner dans le répertoire contenant install.sh et le fichier .tar.gz
# exécuter la commande : sudo sh install.sh

APPLI=kalkulo
VERSION=2.02

[ "`whoami`" != 'root' ] && { echo vous devez être root pour exécuter install.sh ; exit ; }

# vérification des dépendances
ERROR=''
[ "`perl -v`"                      = '' ] && ERROR=$ERROR"perl   "
[ "`perl -e 'use Tk'        2>&1`" = '' ] && ERROR=$ERROR"perl-tk   "
[ "`perl -e 'use Net::Kalk' 2>&1`"!= '' ] && ERROR=$ERROR"facila/Net-Kalk"
[ "$ERROR" != '' ] && { echo "vous devez d'abbord installer : $ERROR" ; exit ; }

FILE=$APPLI.$VERSION.tar.gz
echo installation de facila $FILE
tar -xzf $FILE -C /

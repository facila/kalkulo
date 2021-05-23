#!/bin/bash

# se positionner dans le répertoire contenant kalkulo_install.sh et le fichier tar.gz
# exécuter la commande : sudo sh kalkulo_install.sh

APPLI=kalkulo
VERSION=2.13

DIR=/usr/local/facila
LG=fr_FR.UTF-8

[ "`whoami`" != 'root' ] && { echo vous devez exécuter : sudo sh kalkulo_install.sh ; exit ; }

# vérification des dépendances
perl -e '' 2>/dev/null ; [ $? != "0" ] && { echo "vous devez d'abbord installer : perl" ; exit ; }

ERROR=''
perl -e 'use Tk'        2>/dev/null ; [ $? != "0" ] && ERROR=$ERROR"perl-tk   "
perl -e 'use Net::Kalk' 2>/dev/null ; [ $? != "0" ] && ERROR=$ERROR"facila/Net-Kalk"
[ "$ERROR" != '' ] && { echo "vous devez d'abbord installer : $ERROR" ; exit ; }

FILE=$APPLI.$VERSION.tar.gz
echo installation de facila $FILE
tar -xzf $FILE -C /

# copie du répertoire d'origine $LG dans la langue de votre machine $LANG
# vous pouvez-ensuite traduire les fichiers ( menu , aide , ... )
[ "$LANG" != "$LG" ] && cp -R $DIR/var/$LG $DIR/var/$LANG
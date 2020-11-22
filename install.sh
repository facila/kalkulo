#!/bin/bash

# l'installation se fait en root
# se positionner dans le répertoire contenant install.sh
# passer la commande : sh install.sh

VERSION=2.02

[ "`whoami`" != 'root' ] && { echo vous devez être root pour exécuter install.sh ; exit ; }

# vérification des dépendances
ERROR=''
[ "`perl -v`"                              = '' ] && ERROR=$ERROR"perl   "
[ "`perl -e 'use Tk'        2>/dev/null`" != '' ] && ERROR=$ERROR"perl-tk   "
[ "`perl -e 'use Net::Kalk' 2>/dev/null`" != '' ] && ERROR=$ERROR"facila/Net-Kalk"
[ "$ERROR" != '' ] && { echo "vous devez d'abbord installer : $ERROR" ; exit ; }

FILE=kalkulo.$VERSION.tar.gz
echo installation de facila $FILE
tar -xzf $FILE -C /

#!/bin/bash

# version 2.02
# l'installation se fait en root
# se positionner dans le répertoire contenant install.sh
# passer la commande : sh install.sh

[ "`whoami`" != 'root' ] && { echo vous devez être root pour exécuter install.sh ; exit ; }

FILE=kalkulo.2.02.tar.gz

# vérification des dépendances
ERROR=''
[ "`perl -v`"                = '' ] && ERROR=$ERROR"perl   "
[ "`perl -e 'use Tk' 2>&1`" != '' ] && ERROR=$ERROR"perl-tk   "
[ "$ERROR" != '' ] && { echo "vous devez d'abbord installer : $ERROR" ; exit ; }

echo installation de facila $FILE
tar -xzf $FILE -C /

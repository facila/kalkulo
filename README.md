# facila kalkulo : Calculatrice IP
### Installation de facila kalkulo
```
vous devez avoir installé au préalable :
- perl et perl-tk ( Tk.pm )
- facila/Net::Kalk depuis le CPAN : https://metacpan.org/pod/Net::Kalk

téléchargez kalkulo à partir de github :
- cliquez sur : Code
- cliquez sur : Download ZIP

l'installation se fait dans le répertoire de l'utilisateur
tapez les commandes suivantes :
- DIR_SOURCE="nom du répertoire où se trouve le fichier téléchargé : kalkulo-main.zip"
- cd
- mv $DIR_SOURCE/kalkulo-main.zip .
- unzip kalkulo-main.zip
- sh kalkulo-main/install.sh kalkulo.v2.15.tar.gz

si la variable globale $FACILA n'existe pas
- elle est créée dans ~/.bashrc : "export FACILA=~/facila"

si il y a une ancienne version de stato
- les répertoires et fichiers de install_kalkulo sont copiés dans $FACILA/share/save//old

kalkulo-main.zip     est déplacé dans $FACILA/share/save/install
kalkulo.v2.15.tar.gz est déplacé dans $FACILA/share/save/version
```
### Utilisation de facila kalkulo
```
$FACILA/kalkulo/prg/kalkulo
```
### L'utilisateur peut créer un alias dans .bashrc
```
alias kalkulo='$FACILA/kalkulo/prg/kalkulo'
```
### La commande devient alors
```
kalkulo
```
### Application partagée , commandes à faire en root
```
si vous souhaitez partager kalkulo à un groupe d'utilisateurs vous devez :
- créer un groupe pour kalkulo ou utiliser un groupe déjà existant
- mettre les répertoires et fichiers de kalkulo dans ce group ( vérifier les droits r-x )
- créer les utilisateurs en les mettant dans ce groupe

les utilisateurs doivent se connecter au serveur avec la commande : ssh -X SERVEUR
```

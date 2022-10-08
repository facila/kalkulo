# facila kalkulo : Calculatrice IP
### Installation de facila kalkulo
```
vous devez avoir installé au préalable :
- perl et perl-tk ( Tk.pm )
- facila/Net::Kalk depuis le CPAN : https://metacpan.org/pod/Net::Kalk

téléchargez kalkulo à partir de github :
- cliquez sur : Code
- cliquez sur : Download ZIP

positionnez vous dans le répertoire $DIR où vous souhaitez installer facila kalkulo
copier le fichier téléchargé kalkulo-main.zip dans ce répertoire

tapez les commandes suivantes :
- unzip kalkulo-main.zip
- cd kalkulo-main
- install.sh kalkulo.2.15.tar.gz

l'installation crée une variable globale "export FACILA=$DIR/facila" dans ~/.bashrc
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

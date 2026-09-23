# facila kalkulo : Calculatrice IP
### Installation de facila kalkulo
```
vous devez avoir installé au préalable :
- perl et perl-tk ( Tk.pm )
- facila/Net::Kalk depuis le CPAN : https://metacpan.org/pod/Net::Kalk

voir facila/install README.md
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
### Application partagée sur un serveur
```
kalkulo est accessible à tous les utilisateurs ayant un compte sur le serveur
avec les droits r-x ou r-- pour tous
les utilisateurs doivent se connecter au serveur avec la commande : ssh -X SERVEUR
```

#! /bin/sh
# -*- coding: utf8
# Auteur: Cagliostro <atfield2501@gmail.com>
# Script de contrôle du soft espeak


if [ $# = 0 ]                                       
then
    echo "..Aucune cible spécifié. ."
elif [ $1 = -h ] 2> /dev/null
then
    echo " Caglio-Configuration Espeak (Synthetiseur vocal) "
    exit
else
    echo "******* Caglio-Script ********"
    echo "           Espeak             "

    echo $* >> /tmp/Caglio_tmp_espeak.txt

    espeak -v fr -s 120 -p 30 -s 200 < /tmp/Caglio_tmp_espeak.txt
 
    rm -f /tmp/Caglio_tmp_espeak.txt

fi

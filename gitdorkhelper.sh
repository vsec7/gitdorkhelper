#!/usr/bin/env bash
# GitHub Dork Helper
# Ve <3 Cath
# Keyword list from https://github.com/obheda12/GitDorker/tree/master/Dorks
# Usage : ./gitdorkhelper "target" all_dorks.txt [output.html *optional]
# Example : ./gitdorkhelper "paypal" all_dorks.txt out.html

while read i; do
    echo "[ $i ] https://github.com/search?q=%22$1%22+`echo $i | sed -e 's/ /+/g' | sed -e 's/\"/%22/g'`&type=Code"
    if [ ! -z $3 ]; then
         echo "<li><input type=\"checkbox\"> [<a href=\"https://github.com/search?q=%22$1%22+`echo $i | sed -e 's/ /+/g' | sed -e 's/\"/%22/g'`&type=Code\" target=\"_blank\"> $i </a>]</li>" >> $3
    fi
done < $2

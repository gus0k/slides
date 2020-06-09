#!/bin/sh

[ ! -f "$1" ] && echo "Needs an existing file" && exit 1

filename="${1%.*}"
bname="${filename##*/}" 

pandoc -t revealjs -s -o "$bname".html "$1" -V revealjs-url=src/reveal.js --mathjax 

## Show all lists one by one
sed -i -E "s/(class=\"fragment)/\1 fade-in-then-semi-out/g" "$bname".html

## Full screen

extra_params="\
    width: '100%',\
    height: '100%',"
    

sed -i -E "/Reveal.initialize\(\{/a ${extra_params}" "$bname".html


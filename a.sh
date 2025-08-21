#!/bin/bash

# list bab dan judul
declare -A sections

sections["#1"]="tentang-panduan-ini
javascript-itu-apa-sih
javascript-vs-java-beda-ya
ecmascript
tools-yang-perlu-disiapin
selanjutnya-belajar-apa"

sections["#2"]="sintaks-dasar-cara-kasih-komentar
cara-deklarasi-variabel
lingkup-variabel-scope
hoisting-fenomena-diangkat
struktur-tipe-data
literal"

sections["#3"]="if-else
switch
try-catch-throw
tipe-tipe-error-object"

sections["#4"]="for-loop
while-loop
do-while-loop
continue-lanjut-paksa
break-berhenti-paksa
for-in-loop
for-of-loop"

sections["#5"]="cara-bikin-fungsi
cara-panggil-fungsi
scope-closure
argument-parameter
arrow-function"

sections["#6"]="assignment-perbandingan
operator-aritmatika
operator-bitwise-logical
operator-ternary"

sections["#7"]="numbers
number-object
math-object
strings
string-object
template-literals"

sections["#8"]="date-object"

sections["#9"]="cara-bikin-regex
pola-regex
assertions
character-classes
groups-backreferences
quantifiers"

sections["#10"]="array-typed-arrays"

sections["#11"]="map
weakmap
set
weakset"

sections["#12"]="object-properti
cara-bikin-object
definisi-method
getter-setter"

sections["#13"]="deklarasi-class
fitur-fitur-class
extends-inheritance
konstruktor"

sections["#14"]="jaminan-execution
chaining
error-handling
composition
timing"

sections["#15"]="typed-arrays"

sections["#16"]="iterators
iterables
generators"

sections["#17"]="format-tanggal-waktu
format-angka
collation"

sections["#18"]="exporting
importing
default-exports
renaming-features
aggregating-modules
dynamic-module-loading"

sections["#19"]="gambaran-lengkap-bahasa
struktur-data
enumerability-ownership-properti
inheritance-prototype-chain
perbandingan-equality
closures
meta-programming
memory-management"

# bikin struktur folder
for bab in "${!sections[@]}"; do
  while IFS= read -r item; do
    dir="./$bab/$item"
    mkdir -p "$dir"
    touch "$dir/README.md"
    echo "Created: $dir/README.md"
  done <<< "${sections[$bab]}"
done
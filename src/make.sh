#!/bin/bash

# Author: UTUMI Hirosi (utuhiro78 at yahoo dot co dot jp)
# License: Apache License, Version 2.0

#edict="true"
jawiki="true"
neologd="true"
personal_names="true"
place_names="true"
#skk_jisyo="true"
#sudachidict="true"

rm -f mozcdic-ut.txt

if [[ $edict = "true" ]]; then
cat mozcdic-ut-edict2.txt >> mozcdic-ut.txt
fi

if [[ $jawiki = "true" ]]; then
cat mozcdic-ut-jawiki.txt >> mozcdic-ut.txt
fi

if [[ $neologd = "true" ]]; then
cat mozcdic-ut-neologd.txt >> mozcdic-ut.txt
fi

if [[ $personal_names = "true" ]]; then
cat mozcdic-ut-personal-names.txt >> mozcdic-ut.txt
fi

if [[ $place_names = "true" ]]; then
cat mozcdic-ut-place-names.txt >> mozcdic-ut.txt
fi

if [[ $skk_jisyo = "true" ]]; then
cat mozcdic-ut-skk-jisyo.txt >> mozcdic-ut.txt
fi

if [[ $sudachidict = "true" ]]; then
cat mozcdic-ut-sudachidict.txt >> mozcdic-ut.txt
fi

ruby remove_duplicate_ut_entries.rb mozcdic-ut.txt

ruby count_word_hits.rb
ruby apply_word_hits.rb mozcdic-ut.txt

mv mozcdic-ut.txt ../

rm -rf ../../merge-ut-dictionaries-release/
rsync -a ../* ../../merge-ut-dictionaries-release --exclude=jawiki-* --exclude=mozc-2.* --exclude=mozcdic-* --exclude=tmp_mozc --exclude=fcitx5-mozc*

# Original: UTUMI Hirosi (utuhiro78 at yahoo dot co dot jp)
# License: Apache License, Version 2.0

# 変数の定義
#$alt_cannadic = $true
#$edict = $true
$jawiki = $true
#$neologd = $true
$personal_names = $true
$place_names = $true
#$skk_jisyo = $true
$sudachidict = $true

# ファイルやディレクトリの削除
Remove-Item -Path "mozcdic-ut.txt" -ErrorAction SilentlyContinue
Remove-Item -Path "mozcdic-ut-*" -Recurse -ErrorAction SilentlyContinue

# Gitリポジトリのクローン
if ($alt_cannadic) {
    git clone --depth 1 https://github.com/utuhiro78/mozcdic-ut-alt-cannadic.git
}
if ($edict) {
    git clone --depth 1 https://github.com/utuhiro78/mozcdic-ut-edict2.git
}
if ($jawiki) {
    git clone --depth 1 https://github.com/utuhiro78/mozcdic-ut-jawiki.git
}
if ($neologd) {
    git clone --depth 1 https://github.com/utuhiro78/mozcdic-ut-neologd.git
}
if ($personal_names) {
    git clone --depth 1 https://github.com/utuhiro78/mozcdic-ut-personal-names.git
}
if ($place_names) {
    git clone --depth 1 https://github.com/utuhiro78/mozcdic-ut-place-names.git
}
if ($skk_jisyo) {
    git clone --depth 1 https://github.com/utuhiro78/mozcdic-ut-skk-jisyo.git
}
if ($sudachidict) {
    git clone --depth 1 https://github.com/utuhiro78/mozcdic-ut-sudachidict.git
}

# UT辞書を展開して結合
Get-ChildItem -Filter "mozcdic-ut-*.txt.tar.bz2" | ForEach-Object {
    Expand-Archive -Path $_.FullName
}

Get-ChildItem -Filter "mozcdic-ut-*.txt" | ForEach-Object {
    Get-Content $_.FullName | Add-Content "mozcdic-ut.txt"
}

# mozcdic-ut.txt の重複エントリを削除
ruby remove_duplicate_ut_entries.rb mozcdic-ut.txt

# mozcdic-ut.txt の単語コストを変更
ruby count_word_hits.rb
ruby apply_word_hits.rb mozcdic-ut.txt

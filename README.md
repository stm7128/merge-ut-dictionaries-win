---
title: Merge UT Dictionaries
date: 2023-01-15
---

## Overview

Merge UT Dictionaries merges multiple Mozc UT dictionaries into one and modify the costs for words.

Mozc UT dictionaries contain the following dictionaries:

- [mozcdic-ut-alt-cannadic](https://github.com/utuhiro78/mozcdic-ut-alt-cannadic)

- [mozcdic-ut-edict2](https://github.com/utuhiro78/mozcdic-ut-edict2)

- [mozcdic-ut-jawiki](https://github.com/utuhiro78/mozcdic-ut-jawiki)

- [mozcdic-ut-neologd](https://github.com/utuhiro78/mozcdic-ut-neologd)

- [mozcdic-ut-personal-names](https://github.com/utuhiro78/mozcdic-ut-personal-names)

- [mozcdic-ut-place-names](https://github.com/utuhiro78/mozcdic-ut-place-names)

- [mozcdic-ut-skk-jisyo](https://github.com/utuhiro78/mozcdic-ut-skk-jisyo)

- [mozcdic-ut-sudachidict](https://github.com/utuhiro78/mozcdic-ut-sudachidict)

### Press the Star button on GitHub.

They need more Stars.

Mozc: [1678 Stars](https://github.com/google/mozc)

Fcitx5: [895 Stars](https://github.com/fcitx/fcitx5)

Fcitx5-Mozc: [33 Stars](https://github.com/fcitx/mozc)

> Starring a repository also shows appreciation to the repository maintainer for their work. - [GitHub Docs](https://docs.github.com/en/get-started/exploring-projects-on-github/saving-repositories-with-stars)

> リポジトリに Star を付けるということは、リポジトリメンテナに対してその作業についての感謝を示すことでもあります。- [GitHub Docs](https://docs.github.com/ja/get-started/exploring-projects-on-github/saving-repositories-with-stars)

## License

mozcdic-ut.txt (generated by this tool): Combined

jawiki-latest-all-titles: [CC BY-SA 3.0](https://ja.wikipedia.org/wiki/Wikipedia:ウィキペディアを二次利用する)

- This tool updates the costs for words using jawiki-latest-all-titles.

[id.def](https://github.com/google/mozc/blob/master/src/data/dictionary_oss/id.def) from Mozc: [BSD-3-Clause](https://github.com/google/mozc)

- This tool updates the ID for words using id.def.

Source code: Apache License, Version 2.0

## Usage

```
git clone https://github.com/utuhiro78/merge-ut-dictionaries.git

cd merge-ut-dictionaries/src/
```

Comment out unnecessary UT dictionaries in make.sh.

Default settings:

```
#alt_cannadic="true"
#edict="true"
jawiki="true"
neologd="true"
personal_names="true"
place_names="true"
#skk_jisyo="true"
#sudachidict="true"
```

Generate mozcdic-ut.txt.

```
sh make.sh
```

Add mozcdic-ut.txt to dictionary00.txt and build Mozc as usual.

```
cat mozcdic-ut.txt >> ../../mozc-master/src/data/dictionary_oss/dictionary00.txt
```

[HOME](http://linuxplayers.g1.xrea.com/mozc-ut.html)

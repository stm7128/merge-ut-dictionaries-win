## Overview

Mozc UT dictionaries are additional dictionaries for Mozc.

## Press the Star button on GitHub

They need more Stars.

mozc: [1930 Stars](https://github.com/google/mozc)

fcitx5: [1129 Stars](https://github.com/fcitx/fcitx5)

fcitx5-mozc: [82 Stars](https://github.com/fcitx/mozc)

merge-ut-dictionaries: [40 Stars](https://github.com/utuhiro78/merge-ut-dictionaries)

> Starring a repository also shows appreciation to the repository maintainer for their work. - [GitHub Docs](https://docs.github.com/en/get-started/exploring-projects-on-github/saving-repositories-with-stars)

> リポジトリに Star を付けるということは、リポジトリメンテナに対してその作業についての感謝を示すことでもあります。- [GitHub Docs](https://docs.github.com/ja/get-started/exploring-projects-on-github/saving-repositories-with-stars)

## License

- mozcdic-ut.txt (generated by merge-ut-dictionaries): Combined

- jawiki-latest-all-titles: [CC BY-SA](https://ja.wikipedia.org/wiki/Wikipedia:ウィキペディアを二次利用する)
  - merge-ut-dictionaries updates the costs for words using jawiki-latest-all-titles.

- [id.def](https://github.com/google/mozc/blob/master/src/data/dictionary_oss/id.def) from Mozc: [BSD-3-Clause](https://github.com/google/mozc)
  - merge-ut-dictionaries updates the ID for words using id.def.

- Source code: Apache License, Version 2.0

## Build

```
git clone https://github.com/utuhiro78/merge-ut-dictionaries.git

cd merge-ut-dictionaries/src/
```

Comment out unnecessary UT dictionaries in make.ps1.

Default settings:

```
#alt_cannadic="true"
#edict="true"
jawiki="true"
#neologd="true"
personal_names="true"
place_names="true"
#skk_jisyo="true"
sudachidict="true"
```

If you already have the latest jawiki, put it to src/ and comment out ```jawiki="true"```. Do the same for other dictionaries.

Generate mozcdic-ut.txt.

```
.\make.ps1
Get-Content mozcdic-ut.txt >> ../../mozc-master/src/data/dictionary_oss/dictionary00.txt
```

Build Mozc as usual.


## Dictionaries

Mozc UT dictionaries contain the following dictionaries:

* [mozcdic-ut-alt-cannadic](https://github.com/utuhiro78/mozcdic-ut-alt-cannadic)

* [mozcdic-ut-edict2](https://github.com/utuhiro78/mozcdic-ut-edict2)

* [mozcdic-ut-jawiki](https://github.com/utuhiro78/mozcdic-ut-jawiki)

* [mozcdic-ut-neologd](https://github.com/utuhiro78/mozcdic-ut-neologd)

* [mozcdic-ut-personal-names](https://github.com/utuhiro78/mozcdic-ut-personal-names)

* [mozcdic-ut-place-names](https://github.com/utuhiro78/mozcdic-ut-place-names)

* [mozcdic-ut-skk-jisyo](https://github.com/utuhiro78/mozcdic-ut-skk-jisyo)

* [mozcdic-ut-sudachidict](https://github.com/utuhiro78/mozcdic-ut-sudachidict)

[HOME](http://linuxplayers.g1.xrea.com/mozc-ut.html)

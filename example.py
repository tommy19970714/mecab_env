#!/usr/bin/env python
# -*- coding: utf-8 -*-

import MeCab

tagger = MeCab.Tagger('-Owakati -d /usr/lib/mecab/dic/mecab-ipadic-neologd')

print(tagger.parse("こんにちは世界"))

#!/usr/bin/env python

import sys
from pylearn2.config import yaml_parse
train = open(sys.argv[1])
train = train.read()
train = yaml_parse.load(train)
train.main_loop()

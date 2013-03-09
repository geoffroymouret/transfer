import os
from pylearn2.utils.shell import run_shell_command

myDir = "/data/lisatmp/ift6266h13/mouretge/transfer/"

command = """jobdispatch --condor --env=THEANO_FLAGS=floatX=float32 --duree=48:00:00 --whitespace python %(dir)strain_model.py %(dir)syaml_files/2MLPSoftmax_LR0.\"{{1,O5,01,005,001}}\"Momentum0.\"{{1,3,5,7,9}}\"".yaml""" % {"dir":myDir}
run_shell_command(command)
print command

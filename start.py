import os
from pylearn2.utils.shell import run_shell_command

myDir = "/data/lisatmp/ift6266h13/mouretge/transfer/"

command = """jobdispatch --condor --env=THEANO_FLAGS=device=gpu,floatX=float32,force_device=True --duree=48:00:00 --whitespace --gpu bash %(dir)strain_model.py \"%(dir)s/yaml_files/1layerSoftmax_LR0.1.yaml\" """ % {"dir":myDir}
run_shell_command(command)

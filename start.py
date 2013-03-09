import os
from pylearn2.utils.shell import run_shell_command

myDir = "/data/lisatmp/ift6266h13/mouretge/transfer/"
myYamls = myDir + "yaml_files/"

names = os.listdir(myYamls)
dirs = [myYamls + name for name in names]

command = """jobdispatch --condor --env=THEANO_FLAGS=floatX=float32 --duree=48:00:00 --whitespace python %(dir)strain_model.py """ % {"dir":myDir}

command += """\"{{"""
command += ','.join(dirs)
command += """}}\""""

run_shell_command(command)
print command

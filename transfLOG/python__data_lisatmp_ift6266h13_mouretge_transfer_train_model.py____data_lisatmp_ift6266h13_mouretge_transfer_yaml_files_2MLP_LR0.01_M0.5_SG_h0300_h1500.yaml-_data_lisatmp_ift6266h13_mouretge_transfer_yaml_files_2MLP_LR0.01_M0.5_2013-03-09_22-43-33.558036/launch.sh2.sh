#!/bin/bash
export HOME=/u/mouretge

cd /data/lisatmp/ift6266h13/mouretge/transfer
[ -r "LOGS.NOBACKUP/python__data_lisatmp_ift6266h13_mouretge_transfer_train_model.py____data_lisatmp_ift6266h13_mouretge_transfer_yaml_files_2MLP_LR0.01_M0.5_SG_h0300_h1500.yaml-_data_lisatmp_ift6266h13_mouretge_transfer_yaml_files_2MLP_LR0.01_M0.5_2013-03-09_22-43-33.558036/.bashrc" ];echo "Can read the source file? " $? 1>&2 
source LOGS.NOBACKUP/python__data_lisatmp_ift6266h13_mouretge_transfer_train_model.py____data_lisatmp_ift6266h13_mouretge_transfer_yaml_files_2MLP_LR0.01_M0.5_SG_h0300_h1500.yaml-_data_lisatmp_ift6266h13_mouretge_transfer_yaml_files_2MLP_LR0.01_M0.5_2013-03-09_22-43-33.558036/.bashrc
klist -5
echo "Executing on " `/bin/hostname` 1>&2
echo "HOSTNAME: ${HOSTNAME}" 1>&2
echo "PATH: $PATH" 1>&2
echo "PYTHONPATH: $PYTHONPATH" 1>&2
echo "LD_LIBRARY_PATH: $LD_LIBRARY_PATH" 1>&2
echo "OMP_NUM_THREADS: $OMP_NUM_THREADS" 1>&2
echo "CONDOR_JOB_LOGDIR: $CONDOR_JOB_LOGDIR" 1>&2
echo "HOME: $HOME" 1>&2
grep -E "^GlobalJobId" $_CONDOR_JOB_AD 1>&2
pwd 1>&2
echo "nb args: $#" 1>&2
echo "Running: command: \"$@\"" 1>&2
echo "ulimit cmd: ulimit -v 1484800"
ulimit -v 1484800
[ -x "$1" ];echo "Can execute the cmd? " $? 1>&2
sh -c "$@"
ret=$?
rm -f echo ${KRB5CCNAME:5}
echo "return value ${ret}"
exit ${ret}

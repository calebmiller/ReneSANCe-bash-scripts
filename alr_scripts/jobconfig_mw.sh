#!/bin/bash
#SBATCH --time=1:00:00
#SBATCH --account=def-roney

source /home/cmiller/projects/def-roney/cmiller/Renev1.3.4/install/bin/renesance-init.sh
cd $SLURM_TMPDIR
renesance -f /home/cmiller/projects/def-roney/cmiller/Renev1.3.4/run/index.conf -s $ALR$SEED -D alr:$ALR -D costhcut_pos_min:$CTCUT_PMIN -D costhcut_pos_max:$CTCUT_PMAX -D costhcut_neg_min:$CTCUT_NMIN -D costhcut_neg_max:$CTCUT_NMAX  -D mw:80.${MASS}  >> /scratch/cmiller/Results/${ALR}_${SEED}_${CTCUT_NMIN}_${CTCUT_NMAX}_${MASS}.log
#!/bin/bash

export BLIS_NUM_THREADS=1
export MKL_NUM_THREADS=1
export NUMBA_NUM_THREADS=1
export NUMEXPR_NUM_THREADS=1
export OMP_NUM_THREADS=1
export OPENBLAS_NUM_THREADS=1
export VECLIB_MAXIMUM_THREADS=1

export MPLBACKEND=agg
export TMPDIR=/lscratch/$SLURM_JOB_ID
export JOBLIB_TEMP_FOLDER=$TMPDIR
export PYTHONUNBUFFERED=1
export PYTHONWARNINGS='ignore:Persisting input arguments took:UserWarning'

CONDA_BASE=$(conda info --base)
source $CONDA_BASE/etc/profile.d/conda.sh
conda activate sksurv-workflows

SELECT_MODEL_CMD="$SLURM_SUBMIT_DIR/select_model.py $@"
echo $SELECT_MODEL_CMD
$SELECT_MODEL_CMD

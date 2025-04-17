#! /usr/bin/env bash

#SBATCH --mem=8G
#SBATCH --cpus-per-task=1
#SBATCH --ntasks=1
#SBATCH --time=00:05:00
#SBATCH --output=/home/mila/f/francis.pelletier/projects/uv-test/job_output.txt
#SBATCH --error=/home/mila/f/francis.pelletier/projects/uv-test/job_error.txt

module load python/3.10
virtualenv $SLURM_TMPDIR/uv-test/.venv
source $SLURM_TMPDIR/uv-test/.venv/bin/activate

cd /home/mila/f/francis.pelletier/projects/uv-test && UV_PROJECT_ENVIRONMENT=$SLURM_TMPDIR/uv-test/.venv uv sync
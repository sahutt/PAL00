#!/bin/sh
#SBATCH -A p31750
#SBATCH -p short
#SBATCH -N 1
#SBATCH --ntasks=1
#SBATCH -t 4:00:00
#SBATCH --mem=10GB
#SBATCH --job-name="vibrant_array"
#SBATCH --mail-user=@u.northwestern.edu
#SBATCH --mail-type=ALL
#SBATCH --output=/projects/b1042/HartmannLab/PAL00/vibrant/errout/vibrant_array_%A_%a.out
#SBATCH --error=/projects/b1042/HartmannLab/PAL00/vibrant/errout/vibrant_array_%A_%a.err
#SBATCH --array=1-21%5

module purge all
sleep $(echo "$RANDOM / 36000 * 60" | bc -l | xargs printf "%.0f")

echo "Starting vibrant job"

module purge all
module load python

source activate /projects/p31378/conda_envs/vibrant

data_dir=/projects/b1042/HartmannLab/PAL00/fasta
output_dir=/projects/b1042/HartmannLab/PAL00/vibrant

param_store=/projects/b1042/HartmannLab/PAL00/scripts/sample_list.txt
param_a=$(cat $param_store | awk -v var=$SLURM_ARRAY_TASK_ID 'NR==var {print $1}')

n=$(printf "%04d" $SLURM_ARRAY_TASK_ID)

VIBRANT_run.py -i ${data_dir}/${param_a}.filtered_sequences.fasta \
-d  /projects/p31378/conda_envs/vibrant/databases \
-folder ${output_dir}

echo $param_a
echo $n
echo "Finishing vibrant job"


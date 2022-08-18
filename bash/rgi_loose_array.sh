#!/bin/bash
#SBATCH -J rgi_array
#SBATCH -A p31750
#SBATCH --mail-type=ALL
#SBATCH --mail-user=@u.northwestern.edu
#SBATCH -N 1
#SBATCH -n 5
#SBATCH --mem=5GB
#SBATCH -t 00:10:00
#SBATCH --output=/projects/b1042/HartmannLab/PAL00/rgi/loose/errout/rgi_%A_%a.out
#SBATCH --error=/projects/b1042/HartmannLab/PAL00/rgi/loose/errout/rgi_%A_%a.err
#SBATCH -p short
#SBATCH --array=1-21%7


module purge all
module load python/anaconda3.6


#load rgi environment

source activate /projects/b1052/shared/rgi

#create a variable to store your fasta file list
#the file will act as both your array job counter and will determine which files rgi analyzes

param_store=/projects/b1042/HartmannLab/PAL00/scripts/sample_list.txt

#assign the first column to a parameter a variable
#note: $0 feeds the whole column into awk, change this if you have multiple columns in your parameter storage text

param_a=$(cat $param_store | awk -v var=$SLURM_ARRAY_TASK_ID 'NR==var {print $1}')


#call  the program, using variable a
#output is the directory and final file name

rgi main -i /projects/b1042/HartmannLab/PAL00/phage_files/${param_a}.filtered_sequences.phages_combined.fna -o /projects/b1042/HartmannLab/PAL00/rgi/loose/${param_a} /
-t contig --include_loose --clean -d wgs

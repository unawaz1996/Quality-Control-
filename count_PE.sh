#!/bin/bash 


#SBATCH -p batch
#SBATCH -n 12
#SBATCH -N 1
#SBATCH --time=02:00:00
#SBATCH --mem=10GB

# notification configuration
#SBATCH --mail-type=END
#SBATCH --mail-type=FAIL
#SBATCH --mail-user=urwah.nawaz@student.adelaide.edu.au

DIR=/fast/users/a1654797/Second_try/Trimmed_sequences2nd/trim_galore

bash count_fastq.sh $DIR/all_R1.fq

#!/bin/bash


##intial QC using FastQC

#SBATCH -p batch
#SBATCH -n 12
#SBATCH --time=10:00:00
#SBATCH --mem=20GB

# notification configuration
#SBATCH --mail-type=END
#SBATCH --mail-type=FAIL
#SBATCH --mail-user=urwah.nawaz@student.adelaide.edu.au



module load  fastqc/0.11.4
module load  Java/1.8.0_71


readDir=//fast/users/a1654797/cuttlefish_RNAseq_urwah/Sequences
outDIR=//fast/users/a1654797/Second_try/Quality_assessment/FastQC

echo "Initialising files:"
date

if [ -d $outDIR ]; then
    echo "Folder $outDIR exists ..."
else
    mkdir $outDIR
fi

cd $readDir 

FILES=$(ls *_R1.fastq)


for f in ${FILES} ;
do 

	FILENAME=${f%_R1.fastq}
	echo "Commencing FastQC $FILENAME"
	fastqc ./ ${readDir}/${FILENAME}_R1.fastq ${readDir}/${FILENAME}_R2.fastq
done

echo "Program concludes:"
date

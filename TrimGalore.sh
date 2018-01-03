#!/bin/bash

readDir=/home/urwah/cuttlefish_RNAseq_urwah
outDIR=/home/urwah/TrimGalore/trimmed_seqeunces

echo "Initialising files:"
date

if [ -d $outDIR ]; then
    echo "Folder $outDIR exists ..."
else
    mkdir $outDIR
fi

cd ${readDir} 

FILES=$(ls *_R1.fastq.gz)


for f in ${FILES} ;
do 

	FILENAME=${f%_R1.fastq.gz}
	echo "Commencing trim_galore $FILENAME"
	trimgalore.pl --stringency 6 -o ${outDIR} --paired --fastqc_args "-t 8" ${readDir}/${FILENAME}_R1.fastq.gz ${readDir}/${FILENAME}_R2.fastq.gz
done

echo "Program concludes:"
date


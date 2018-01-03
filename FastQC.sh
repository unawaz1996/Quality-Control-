#!/bin/bash

readDir=/home/urwah/cuttlefish_RNAseq_urwah
outDIR=/home/urwah/InitialFastQC/FastQC

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
	echo "Commencing FastQC $FILENAME"
	fastqc ./ ${readDir}/${FILENAME}_R1.fastq.gz ${readDir}/${FILENAME}_R2.fastq.gz
done

echo "Program concludes:"
date
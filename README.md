# Quality Control

The codes were mainly used to clean up Illumina RNA-seq raw reads for my honours thesis project

# Programs used 

* [FastQC](https://www.bioinformatics.babraham.ac.uk/projects/fastqc/) - Assesses the quality of the data
* [TrimGalore](https://www.bioinformatics.babraham.ac.uk/projects/trim_galore/) - Runs cutadapt and FastQC
* [ngsReports](https://github.com/UofABioinformaticsHub/ngsReports) - R package for managing FastQC output


# Codes and description 

* FastQC.sh: Runs FastQC on the initial data
* TrimGalore.sh: Runs TrimGalore 
* codefortables.py: opens the summary.txt output file and makes LaTeX tables based on the results 
* count_PE.sh: Runs the script count_fastq.sh on Phoenix HPC
* count_fastq.sh: Counts the number of reads in a .fq file 
* fastqc_phoenix.sh: Runs FastQC on Phoenix
* run_ngsReports.R: Makes combined plots for the FastQC output

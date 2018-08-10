#!/usr/bin/env Rscript
# checking the quality of the reads
# Multiple plot function
library(ngsReports)
#ngs reports for initial data


untrimmed <- ("~/Documents/Honours_sem2/Quality_assessment/Initial_FastQC")
trimmed <- ("~/Documents/Honours_sem2/Quality_assessment/After_second_trimming")

files <- list.files(trimmed, pattern = "fastqc.zip$", full.names = TRUE)
before_files <- list.files(untrimmed, pattern = "fastqc.zip$", full.names = TRUE)

untrimmed <- getFastqcData(before_files)
total_statistics <- readTotals(untrimmed)

trimmed <- getFastqcData(files)
total_statistics <- readTotals(trimmed)

#plot summaries before trimming
#png(filename="~/Documents/Honours_sem2/Quality_assessment/After_second_trimming/plot_summary_afterTrimming.png")
plot_Summary_BeforeTrimming <-plotSummary(untrimmed)
plot_Summary_BeforeTrimming
#dev.off()

#plot summaries after trimmed
#png(filename="~/Documents/Honours_sem2/Quality_assessment/After_second_trimming/plot_summary_afterTrimming.png")
plot_Summary_afterTrimming <-plotSummary(trimmed)
plot_Summary_afterTrimming
#dev.off()

#plotting number of reads before trimming
#png(filename="~/Documents/Honours_sem2/Quality_assessment/After_second_trimming/total_reads_afterTrimming.png")
total_reads_BeforeTrimming <- plotReadTotals(untrimmed)
total_reads_BeforeTrimming
#dev.off()


#plotting number of reads after trimming
#png(filename="~/Documents/Honours_sem2/Quality_assessment/After_second_trimming/total_reads_afterTrimming.png")
total_reads_afterTrimming <- plotReadTotals(trimmed)
total_reads_afterTrimming
#dev.off()

#basequalities
plot_baseQuality_beforetrimming <-plotBaseQualities(untrimmed)
plot_baseQuality_aftertrimming <-plotBaseQualities(trimmed)
plot_baseQuality_beforetrimming
plot_baseQuality_aftertrimming

#plotting sequence quality before
#png(filename="~/Documents/Honours_sem2/Quality_assessment/After_second_trimming/all_sequence_quality.png")
Sequence_quality_before_trimming <- plotSequenceQualities(untrimmed)
Sequence_quality_before_trimming
#dev.off()

#plotting sequence quality after trimming
#png(filename="~/Documents/Honours_sem2/Quality_assessment/After_second_trimming/all_sequence_quality.png")
Sequence_quality_after_trimming <- plotSequenceQualities(trimmed)
Sequence_quality_after_trimming
#dev.off() 

#plotting sequence content 
sequence_content_before_trimming <- plotSequenceContent(untrimmed)
sequence_content_after_trimming <- plotSequenceContent(trimmed)
sequence_content_before_trimming
sequence_content_after_trimming

#plotting N content 

N_content_before_trimming <- plotNContent(untrimmed)
N_content_after_trimming <- plotNContent(trimmed)
N_content_before_trimming
N_content_after_trimming

#sequence length distribution before trimming
#png(filename="~/Documents/Honours_sem2/Quality_assessment/After_second_trimming/Sequence_length_distribution_afterTrimming.png")
Sequence_Length_Distribution_before_trimming <- plotSequenceLengthDistribution(untrimmed)
Sequence_Length_Distribution_before_trimming
#plotOverrepresentedSummary(fdl)

#sequence length distribution after trimming
#png(filename="~/Documents/Honours_sem2/Quality_assessment/After_second_trimming/Sequence_length_distribution_afterTrimming.png")
Sequence_Length_Distribution_after_trimming <- plotSequenceLengthDistribution(trimmed)
Sequence_Length_Distribution_after_trimming

#duplication levels  before trimming
#png(filename="~/Documents/Honours_sem2/Quality_assessment/After_second_trimming/Duplication_levels_after_trimming.png")
duplication_before_trimming <- plotDuplicationLevels(untrimmed)
duplication_before_trimming
#dev.off()

#duplication levels after trimming
#png(filename="~/Documents/Honours_sem2/Quality_assessment/After_second_trimming/Duplication_levels_after_trimming.png")
duplication_after_trimming <- plotDuplicationLevels(trimmed)
duplication_after_trimming
#dev.off()

#adapter content before trimming
#png(filename="~/Documents/Honours_sem2/Quality_assessment/After_second_trimming/Adapter_content_after_trimming.png")
adapter_content_beforeTrimming <- plotAdapterContent(untrimmed)
adapter_content_beforeTrimming
#dev.off()

#adapter content after trimming
#png(filename="~/Documents/Honours_sem2/Quality_assessment/After_second_trimming/Adapter_content_after_trimming.png")
adapter_content_afterTrimming <- plotAdapterContent(trimmed)
adapter_content_afterTrimming
#dev.off()

#kmer content before trimming
#png(filename="~/Documents/Honours_sem2/Quality_assessment/After_second_trimming/Kmer_content_after_trimming.png")
Kmer_content_all_beforetrimming <- plotKmers(untrimmed)
Kmer_content_all_beforetrimming
#dev.off()

#kmer content after trimming
#png(filename="~/Documents/Honours_sem2/Quality_assessment/After_second_trimming/Kmer_content_after_trimming.png")
Kmer_content_all_aftertrimming <- plotKmers(trimmed)
Kmer_content_all_aftertrimming
#dev.off()

transcriptomes(gcTheoretical)
genomes(gcTheoretical)
plotGcContent(fdl)
plotGcContent(fdl, theoreticalType = "Transcriptome", species = "Mmusculus")
plotGcContent(fdl, theoreticalGC = FALSE)
plotGcContent(fdl, plotType = "line",  theoreticalType = "Transcriptome")

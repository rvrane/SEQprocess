% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/09_variant.call.MuSE.R
\name{MuSE.call}
\alias{MuSE.call}
\title{MuSE.call}
\usage{
MuSE.call(tumor.bam, normal.bam, output.dir, sample.name, ref.fa, run.cmd=TRUE, mc.cores=1)
}
\arguments{
\item{tumor.bam}{path to tumor sample recalibration bam files as tumor-normal pair}

\item{normal.bam}{path to normal sample recalibration bam files}

\item{output.dir}{Output directory}

\item{sample.name}{A character vector for the sample names}

\item{ref.fa}{Reference fasta file}

\item{run.cmd}{Whether to execute the command line (default=TRUE)}

\item{mc.cores}{The number of cores to use. Must be at least one(default=1), and parallelization requires at least two cores.}
}
\value{
MuSE.call output txt file.
}
\description{
A wrapper function to run MuSE (call)
}
\details{
The first step of MuSE, MuSE.call takes as input indexed reference fasta file and BAM files. The BAM files require aligning all the 
         sequence reads against the reference genome using the Burrows-Wheeler alignment tool BWA-mem algorithm. 
         In addition, the BAM files need to be processed by following the GATK-MarkDuplicates, realigning the paired tumor-normal BAMs 
         jointly and recalibrating base quality scores.
}
\references{
MuSE: accounting for tumor heterogeneity using a sample-specific error model improves sensitivity and specificity in mutation calling from sequencing data
}
\seealso{
\url{http://bioinformatics.mdanderson.org/main/MuSE}
}

#!/bin/bash

input=$1
outdir=$2

nextflow run nf-core/sarek \
	-profile docker \
	-c /mnt/pipelines/nextflow/configs/petgen_nf-core.config \
	-c /mnt/pipelines/nextflow/configs/petgen_sarek.config \
	--input ${input} \
	--outdir ${outdir} \
	--tools HaplotypeCaller,snpEff,VEP \
	--igenomes_base /mnt/reference \
	--no_intervals \
	-bg 

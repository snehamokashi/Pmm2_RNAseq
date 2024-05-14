#!/bin/bash
#
#SBATCH --job-name=cdg_pmm2
#SBATCH --ntasks=1
#SBATCH --partition=bigmem
#SBATCH --time=72:00:00
#SBATCH --mem=2gb
#SBATCH --output=/data/ggc/flanagansteet_lab/smokash/PMM2_RNAseq/cdg_pmm2/log/RNASEQ_output_%j.txt
#SBATCH --error=/data/ggc/flanagansteet_lab/smokash/PMM2_RNAseq/cdg_pmm2/log/RNASEQ_error_%j.txt
#SBATCH --mail-type=all
#SBATCH --mail-user=smokash@clemson.edu

cd /data/ggc/flanagansteet_lab/smokash/PMM2_RNAseq/cdg_pmm2

source /opt/ohpc/pub/Software/anaconda3/etc/profile.d/conda.sh
conda activate snakemake

snakemake \
-s Snakefile_star \
--profile slurm \
--configfile RNASeq_star.yaml \
--latency-wait 30 \
--rerun-incomplete

## Citation Information
If you use data or scripts from this repository in your research, please cite the following paper:

**Paper Title:** [Insert Paper Title Here]

*Authors:* [Insert Author Names]

*Journal:* [Insert Journal Name]

*Year:* [Insert Year]

*DOI or Link to Paper:* [Insert DOI or Link to Paper]

## Pmm2 RNA-Seq

### Description
This repository contains scripts and data files related to RNA sequencing analysis for the Pmm2 hypomorph mutants vs wildtype controls at different developmental time points.

### Files

#### FASTQ to counts
- `initiator.sh`: Shell script for initiating the RNA sequencing analysis pipeline.
- `RNASeq_star.yaml.txt`: YAML configuration file for RNA sequencing analysis using STAR.
- `Snakefile_star.txt`: Snakefile for running the RNA sequencing analysis pipeline.
- `config.yaml`: YAML configuration file for general settings.
- `snakemake_submitter.sh`: Shell script for submitting Snakemake jobs.

#### Differential Expression Analysis
- `pmm2_5dpf.R`: R script for analyzing Pmm2 gene expression at 5 days post fertilization.
- `pmm2_8dpf.R`: R script for analyzing Pmm2 gene expression at 8 days post fertilization.

#### Functional Enrichment Analysis
- `go_terms_gene_list_code.R`: R script for generating gene lists based on GO terms.
- `go_terms_genelist_download_code_biomart.R`: R script for downloading gene lists using Biomart.

### Data
- `combined_counts_5dpf.txt`: RNA sequencing counts data at 5 days post fertilization.
- `combined_counts_8dpf.txt`: RNA sequencing counts data at 8 days post fertilization.

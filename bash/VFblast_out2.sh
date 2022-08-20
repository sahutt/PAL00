#!/bin/bash
#SBATCH -J blast_virulence_factor
#SBATCH -A p31750
#SBATCH --mail-type=ALL
#SBATCH --mail-user=@u.northwestern.edu
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --mem=5GB
#SBATCH -t 1:00:00
#SBATCH --output=/projects/b1042/HartmannLab/PAL00/VF/VFblast.out
#SBATCH --error=/projects/b1042/HartmannLab/PAL00/VF/VFblast.err
#SBATCH -p short

module purge all
module load blast

Blast must be executed in file containing custom database
cd /projects/b1042/HartmannLab/PAL00/VFDB_blast_database

#blast each phage file twice - once with tabular output and once for pairwise output for quick analysis

blastn -query /projects/b1042/HartmannLab/PAL00/phage_files/1329-IPA0-00.filtered_sequences.phages_combined.fna -db VFDB_blastdb -task blastn -evalue 0.01 -out /projects/b1042/HartmannLab/PAL00/VF/1329-IPA0-00_VF.txt -outfmt "10 qseqid sallseqid salltitles mismatch positive gaps ppos pident qcovs evalue bitscore qframe sframe sstart send slen qstart qend qlen"
blastn -query /projects/b1042/HartmannLab/PAL00/phage_files/1329-IPA0-28.filtered_sequences.phages_combined.fna -db VFDB_blastdb -task blastn -evalue 0.01 -out /projects/b1042/HartmannLab/PAL00/VF/1329-IPA0-28_VF.txt -outfmt "10 qseqid sallseqid salltitles mismatch positive gaps ppos pident qcovs evalue bitscore qframe sframe sstart send slen qstart qend qlen"
blastn -query /projects/b1042/HartmannLab/PAL00/phage_files/1329-IPA0-33.filtered_sequences.phages_combined.fna -db VFDB_blastdb -task blastn -evalue 0.01 -out /projects/b1042/HartmannLab/PAL00/VF/1329-IPA0-33_VF.txt -outfmt "10 qseqid sallseqid salltitles mismatch positive gaps ppos pident qcovs evalue bitscore qframe sframe sstart send slen qstart qend qlen"
blastn -query /projects/b1042/HartmannLab/PAL00/phage_files/1329-IPA0-35.filtered_sequences.phages_combined.fna -db VFDB_blastdb -task blastn -evalue 0.01 -out /projects/b1042/HartmannLab/PAL00/VF/1329-IPA0-35_VF.txt -outfmt "10 qseqid sallseqid salltitles mismatch positive gaps ppos pident qcovs evalue bitscore qframe sframe sstart send slen qstart qend qlen"
blastn -query /projects/b1042/HartmannLab/PAL00/phage_files/1329-IPA0-41.filtered_sequences.phages_combined.fna -db VFDB_blastdb -task blastn -evalue 0.01 -out /projects/b1042/HartmannLab/PAL00/VF/1329-IPA0-41_VF.txt -outfmt "10 qseqid sallseqid salltitles mismatch positive gaps ppos pident qcovs evalue bitscore qframe sframe sstart send slen qstart qend qlen"
blastn -query /projects/b1042/HartmannLab/PAL00/phage_files/1329-IPA0-44.filtered_sequences.phages_combined.fna -db VFDB_blastdb -task blastn -evalue 0.01 -out /projects/b1042/HartmannLab/PAL00/VF/1329-IPA0-44_VF.txt -outfmt "10 qseqid sallseqid salltitles mismatch positive gaps ppos pident qcovs evalue bitscore qframe sframe sstart send slen qstart qend qlen"
blastn -query /projects/b1042/HartmannLab/PAL00/phage_files/1329-IPA0-53.filtered_sequences.phages_combined.fna -db VFDB_blastdb -task blastn -evalue 0.01 -out /projects/b1042/HartmannLab/PAL00/VF/1329-IPA0-53_VF.txt -outfmt "10 qseqid sallseqid salltitles mismatch positive gaps ppos pident qcovs evalue bitscore qframe sframe sstart send slen qstart qend qlen"
blastn -query /projects/b1042/HartmannLab/PAL00/phage_files/1329-IPA1-28.filtered_sequences.phages_combined.fna -db VFDB_blastdb -task blastn -evalue 0.01 -out /projects/b1042/HartmannLab/PAL00/VF/1329-IPA1-28_VF.txt -outfmt "10 qseqid sallseqid salltitles mismatch positive gaps ppos pident qcovs evalue bitscore qframe sframe sstart send slen qstart qend qlen"
blastn -query /projects/b1042/HartmannLab/PAL00/phage_files/1329-IPA1-35.filtered_sequences.phages_combined.fna -db VFDB_blastdb -task blastn -evalue 0.01 -out /projects/b1042/HartmannLab/PAL00/VF/1329-IPA1-35_VF.txt -outfmt "10 qseqid sallseqid salltitles mismatch positive gaps ppos pident qcovs evalue bitscore qframe sframe sstart send slen qstart qend qlen"
blastn -query /projects/b1042/HartmannLab/PAL00/phage_files/1329-IPA1-41.filtered_sequences.phages_combined.fna -db VFDB_blastdb -task blastn -evalue 0.01 -out /projects/b1042/HartmannLab/PAL00/VF/1329-IPA1-41_VF.txt -outfmt "10 qseqid sallseqid salltitles mismatch positive gaps ppos pident qcovs evalue bitscore qframe sframe sstart send slen qstart qend qlen"
blastn -query /projects/b1042/HartmannLab/PAL00/phage_files/1329-IPA1-44.filtered_sequences.phages_combined.fna -db VFDB_blastdb -task blastn -evalue 0.01 -out /projects/b1042/HartmannLab/PAL00/VF/1329-IPA1-44_VF.txt -outfmt "10 qseqid sallseqid salltitles mismatch positive gaps ppos pident qcovs evalue bitscore qframe sframe sstart send slen qstart qend qlen"
blastn -query /projects/b1042/HartmannLab/PAL00/phage_files/1329-IPA1-53.filtered_sequences.phages_combined.fna -db VFDB_blastdb -task blastn -evalue 0.01 -out /projects/b1042/HartmannLab/PAL00/VF/1329-IPA1-53_VF.txt -outfmt "10 qseqid sallseqid salltitles mismatch positive gaps ppos pident qcovs evalue bitscore qframe sframe sstart send slen qstart qend qlen"
blastn -query /projects/b1042/HartmannLab/PAL00/phage_files/1329-IPA2-53.filtered_sequences.phages_combined.fna -db VFDB_blastdb -task blastn -evalue 0.01 -out /projects/b1042/HartmannLab/PAL00/VF/1329-IPA2-53_VF.txt -outfmt "10 qseqid sallseqid salltitles mismatch positive gaps ppos pident qcovs evalue bitscore qframe sframe sstart send slen qstart qend qlen"
blastn -query /projects/b1042/HartmannLab/PAL00/phage_files/1329-IPA3-28.filtered_sequences.phages_combined.fna -db VFDB_blastdb -task blastn -evalue 0.01 -out /projects/b1042/HartmannLab/PAL00/VF/1329-IPA3-28_VF.txt -outfmt "10 qseqid sallseqid salltitles mismatch positive gaps ppos pident qcovs evalue bitscore qframe sframe sstart send slen qstart qend qlen"
blastn -query /projects/b1042/HartmannLab/PAL00/phage_files/1329-IPA4-28.filtered_sequences.phages_combined.fna -db VFDB_blastdb -task blastn -evalue 0.01 -out /projects/b1042/HartmannLab/PAL00/VF/1329-IPA4-28_VF.txt -outfmt "10 qseqid sallseqid salltitles mismatch positive gaps ppos pident qcovs evalue bitscore qframe sframe sstart send slen qstart qend qlen"
blastn -query /projects/b1042/HartmannLab/PAL00/phage_files/1329-IPA5-28.filtered_sequences.phages_combined.fna -db VFDB_blastdb -task blastn -evalue 0.01 -out /projects/b1042/HartmannLab/PAL00/VF/1329-IPA5-28_VF.txt -outfmt "10 qseqid sallseqid salltitles mismatch positive gaps ppos pident qcovs evalue bitscore qframe sframe sstart send slen qstart qend qlen"
blastn -query /projects/b1042/HartmannLab/PAL00/phage_files/1329-IPAB-28.filtered_sequences.phages_combined.fna -db VFDB_blastdb -task blastn -evalue 0.01 -out /projects/b1042/HartmannLab/PAL00/VF/1329-IPAB-28_VF.txt -outfmt "10 qseqid sallseqid salltitles mismatch positive gaps ppos pident qcovs evalue bitscore qframe sframe sstart send slen qstart qend qlen"
blastn -query /projects/b1042/HartmannLab/PAL00/phage_files/1329-IPAB-30-1.filtered_sequences.phages_combined.fna -db VFDB_blastdb -task blastn -evalue 0.01 -out /projects/b1042/HartmannLab/PAL00/VF/1329-IPAB-30-1_VF.txt -outfmt "10 qseqid sallseqid salltitles mismatch positive gaps ppos pident qcovs evalue bitscore qframe sframe sstart send slen qstart qend qlen"
blastn -query /projects/b1042/HartmannLab/PAL00/phage_files/1329-IPAB-30-2.filtered_sequences.phages_combined.fna -db VFDB_blastdb -task blastn -evalue 0.01 -out /projects/b1042/HartmannLab/PAL00/VF/1329-IPAB-30-2_VF.txt -outfmt "10 qseqid sallseqid salltitles mismatch positive gaps ppos pident qcovs evalue bitscore qframe sframe sstart send slen qstart qend qlen"
blastn -query /projects/b1042/HartmannLab/PAL00/phage_files/1329-IPAB-31-1.filtered_sequences.phages_combined.fna -db VFDB_blastdb -task blastn -evalue 0.01 -out /projects/b1042/HartmannLab/PAL00/VF/1329-IPAB-31-1_VF.txt -outfmt "10 qseqid sallseqid salltitles mismatch positive gaps ppos pident qcovs evalue bitscore qframe sframe sstart send slen qstart qend qlen"
blastn -query /projects/b1042/HartmannLab/PAL00/phage_files/1329-IPAB-31-2.filtered_sequences.phages_combined.fna -db VFDB_blastdb -task blastn -evalue 0.01 -out /projects/b1042/HartmannLab/PAL00/VF/1329-IPAB-31-2_VF.txt -outfmt "10 qseqid sallseqid salltitles mismatch positive gaps ppos pident qcovs evalue bitscore qframe sframe sstart send slen qstart qend qlen"
blastn -query /projects/b1042/HartmannLab/PAL00/phage_files/1329-PPA0-02.phages_combined.fna -db VFDB_blastdb -task blastn -evalue 0.01 -out /projects/b1042/HartmannLab/PAL00/VF/1329-PPA0-02_VF.txt -outfmt "10 qseqid sallseqid salltitles mismatch positive gaps ppos pident qcovs evalue bitscore qframe sframe sstart send slen qstart qend qlen"

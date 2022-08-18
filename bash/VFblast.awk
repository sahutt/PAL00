BEGIN {FS="\t"}

{ print "blastn -query /projects/b1042/HartmannLab/PAL00/phage_files/" $1 /
".filtered_sequences.phages_combined.fna -db VFDB_blastdb -task blastn -evalue 0.01 -out /projects/b1042/HartmannLab/PAL00/VF/" $1 "_VF.txt -outfmt 7" }
{ print "blastn -query /projects/b1042/HartmannLab/PAL00/phage_files/" $1 /
".filtered_sequences.phages_combined.fna -db VFDB_blastdb -task blastn -evalue 0.01 -out /projects/b1042/HartmannLab/PAL00/VF/" $1 "_VF_pairwise.txt -outfmt 0" }

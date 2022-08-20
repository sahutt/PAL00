# PA L00
Pseudomonas aeruginosa L00 phage mining

- Find phage using Vibrant
- Search for resistance genes in vibrant outputs using [RGI CARD](https://github.com/arpcard/rgi#load-card-reference-data)
- Search for virulence factors in vibrant outputs using [VFDB](http://www.mgc.ac.cn/VFs/main.htm)
- Blast prophage against eachother



1. Download files from Sharepoint and transfer to Quest via WinSCP

2. Create unique file name removing everything after the first period - execute command in file containing all samples
```
ls | cut -f1 -d. | uniq -c > samples_list.txt
```
See sample_list.txt

3. Use [Vibrant](https://github.com/AnantharamanLab/VIBRANT) version 1.2.0 to identify prophage and viral sequences in PA fasta files  
   Bash script: vibrant_array.sh  
   Output file: combined_phage.fna which contains phage identified as prophage and lytic used for downstream analysis   
    
4. Use [RGI CARD](https://github.com/arpcard/rgi#load-card-reference-data) with [CARD database v2.1.4](https://card.mcmaster.ca/download)
    to identify Resistance Genes in phage sequences  
  
  Strict parameter produced no outputs, so parameters were loosened to retrieve all potential matches  
  Bash script: rgi_array.sh and rgi_loose_array.sh  
  Output file: rgi.txt and rgi_loose.txt  

5. Use [VFDB](http://www.mgc.ac.cn/VFs/main.htm) to identify virulence factors  

Make a blast database using the VFDB (downloaded 8/17/2022)  
```
module load blast/2.12.0
gunzip VFDB_setB_nt.fas.gz
makeblastdb -in VFDB_setB_nt.fasta -dbtype nucl -out VFDB_blastdb
```

Create bash script using awk   
awk file: VFblast.awk  

After creating awk file - execute the following command in the command line to create bash script for running blast
```
awk -f VFblast.awk sample_list.txt > VFblast_out.sh
```
Blast all vibrant outputs against custom database - creating pairwise and tabular outputs
Bash script: VFblast.sh and VFblast_2.sh  
Output file: table of query matches to virulence factor database and pairwise alignments .txt

6. Blast prophage against eachother

...

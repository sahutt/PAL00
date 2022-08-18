# PAL00
Pseudomonas aeruginosa L00 phage mining

1. Find phage using Vibrant
2. Search for resistance genes in vibrant outputs using [RGI CARD](https://github.com/arpcard/rgi#load-card-reference-data)
3. Search for virulence factors in vibrant outputs using [VFDB](http://www.mgc.ac.cn/VFs/main.htm)



Download files from Sharepoint and transfer to Quest via WinSCP

Create unique file name removing everything after the first period
```
ls | cut -f1 -d. | uniq -c > samples_list.txt
```

Use text file to submit array for sample processing
Vibrant - find prophage



rgi array - loose and strict


Make a blast database using the [VFDB](http://www.mgc.ac.cn/VFs/main.htm) (downloaded 8/17/2022)
```
module load blast/2.12.0
gunzip VFDB_setB_nt.fas.gz
makeblastdb -in VFDB_setB_nt.fasta -dbtype nucl -out VFDB_blastdb
```

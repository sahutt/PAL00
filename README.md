# PAL00
Pseudomonas aeruginosa L00 phage mining


Download files from Sharepoint and transfer to Quest via WinSCP

Create unique file name removing everything after the first period

```
ls | cut -f1 -d. | uniq -c > samples_list.txt

```

Use text file to submit array for sample processing
Vibrant - find prophage
Extract prophage files - analyze for ARGs and VF using RGI CARD and VFDB



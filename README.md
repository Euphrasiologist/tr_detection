# TR detection across plants

A relatively recent paper by Fajkus et al., 2019 (https://pubmed.ncbi.nlm.nih.gov/31392988/) characterised telomerase RNA across many species of land plants.

In this work, I've taken data from the supplementary of that paper, aligned them using MAFFT. Using `hmmer` (`hmmbuild` and then `nhmmer`) we can scan across the DToL genomes. Once candidate regions have been found, they can be extracted (see [`hmmer_extract_tblout`](https://github.com/ARU-life-sciences/extract_nhmmer_tblout)). These extracted regions can then be incorporated back into the original fasta file to make a new alignment.

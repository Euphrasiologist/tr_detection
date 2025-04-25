# All TR genes

This dir hosts the latest fasta which has all copies of the TR gene that I can find (currently plants and vertebrates). A recent paper from Fajkus has hymenopteran TR genes.

# Create the alignment


```bash
# from Fajkus and NCBI
/software/team301/mafft-7.525-with-extensions/core/mafft TR.fasta > TR_aln.fasta
# In addition to Hymenoptera dataset
/software/team301/mafft-7.525-with-extensions/core/mafft TR_all.fasta > TR_all_aln.fasta
```
Prepare the full HMM.

```bash
/software/team301/hmmer-3.4/src/hmmbuild -n TR_all_aln TR_all_aln.hmm ../../original_data/align_divergent/TR_all_aln.fasta
```
# References

https://academic.oup.com/nar/article/51/1/420/6956357#supplementary-data

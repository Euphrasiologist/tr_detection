# TR detection across plants

A relatively recent paper by Fajkus et al., 2019 (https://pubmed.ncbi.nlm.nih.gov/31392988/) characterised telomerase RNA across many species of land plants.

In this work, I've taken data from the supplementary of that paper, aligned them using MAFFT. Using `hmmer` (`hmmbuild` and then `nhmmer`) we can scan across the DToL genomes. Once candidate regions have been found, they can be extracted (see [`hmmer_extract_tblout`](https://github.com/ARU-life-sciences/extract_nhmmer_tblout)). These extracted regions can then be incorporated back into the original fasta file to make a new alignment.

## Pipeline

### Original sequences

The fasta file `./original_data/TR.fasta` contains the transcribed sequences from the Fajkus paper. The `./original_data/TR.fas`is the aligned version of this file, created using:

```bash
# nothing fancy to see here...
mafft TR.fasta > TR.fas
# and then make the TR.hmm
# place it in the original_data directory
hmmbuild TR.fas
```

### Running on assemblies

First up, find all the assemblies we will work on:

```bash
ls /lustre/scratch124/tol/projects/darwin/data/dicots/*/assembly/curated/*/*primary.fa.gz | \
awk '{print $11}' > ./working/dtol_plant_paths.txt
# the paths need some manual editing to remove duplicates etc.
```

Now we need to run 

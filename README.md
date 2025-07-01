# TR detection across plants

A relatively recent paper by Fajkus et al., 2019 (https://pubmed.ncbi.nlm.nih.gov/31392988/) characterised telomerase RNA across many species of land plants.

In this work, I've taken data from the supplementary of that paper, aligned them using MAFFT. Using `hmmer` (`hmmbuild` and then `nhmmer`) we can scan across the DToL genomes. Once candidate regions have been found, they can be extracted (see [`hmmer_extract_tblout`](https://github.com/ARU-life-sciences/extract_nhmmer_tblout)). These extracted regions can then be incorporated back into the original fasta file to make a new alignment.

## Pipeline

### Original sequences

The fasta file `./original_data/TR.fasta` contains the transcribed sequences from the Fajkus paper [1]. The `./original_data/TR.fas`is the aligned version of this file, created using:

```bash
# nothing fancy to see here...
/software/team301/mafft-7.525-with-extensions/core/mafft TR.fasta > TR.fas
# and then make the TR.hmm
# place it in the original_data directory
/software/team301/hmmer-3.4/src/hmmbuild TR.fas
```

### Running on assemblies

First up, find all the assemblies we will work on:

```bash
/software/team301/user/mb39/scripts/any_latest_assemblies.bash dicots > ./working/dtol_plant_paths.txt
```

## References

[1] Petr Fajkus, Vratislav Peška, Michal Závodník, Miloslava Fojtová, Jana Fulnečková, Šimon Dobias, Agata Kilar, Martina Dvořáčková, Dagmar Zachová, Ivona Nečasová, Jason Sims, Eva Sýkorová, Jiří Fajkus, Telomerase RNAs in land plants, Nucleic Acids Research, Volume 47, Issue 18, 10 October 2019, Pages 9842–9856, https://doi.org/10.1093/nar/gkz695 

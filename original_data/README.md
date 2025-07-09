# Data in this folder

Some of this is from the 2019 Fajkus paper [1].

- I took all the fasta sequences from the supplementary
- `mmft len -e 250` to extract sequences with more than 250bp (shorter than this likely to be fragments).
- Aligned them. `/software/team301/mafft-7.525-with-extensions/core/mafft fajkus_dtol_250.fasta > fajkus_dtol_250_aligned.fasta`
- Created an HMM. `/software/team301/hmmer-3.4/src/hmmbuild fajkus_dtol_250_aligned.hmm fajkus_dtol_250_aligned.fasta`
- Press the HMM, move to dir. `/software/team301/hmmer-3.4/src/hmmpress fajkus_dtol_250_aligned.hmm`; `mkdir latest_hmm`; `mv fajkus_dtol_250_aligned.hmm* latest_hmm`
- Ran this HMM across all DToL genomes
- Appended new TR sequences
- Created new HMM from this data.

## Files

- TR* are the original sequences taken from [1]
- fajkus_dtol* contain the appended DToL sequences.
- all* have hymenoptera added (of less utility as the sequences are quite divergent)
- arceuthobium* are files Petr has sent me for *Viscum* analysis

## References

[1] Petr Fajkus, Vratislav Peška, Michal Závodník, Miloslava Fojtová, Jana Fulnečková, Šimon Dobias, Agata Kilar, Martina Dvořáčková, Dagmar Zachová, Ivona Nečasová, Jason Sims, Eva Sýkorová, Jiří Fajkus, Telomerase RNAs in land plants, Nucleic Acids Research, Volume 47, Issue 18, 10 October 2019, Pages 9842–9856, https://doi.org/10.1093/nar/gkz695 

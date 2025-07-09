# TERT

The purpose here is to get reliable TERT amino acid sequences from plants, back translate to nucleotide, and then use HMMER to search genomes.

In this directory, we first of all cluster using CD-HIT the amino acid sequences, then extract the clusters into fasta files.

The `clusters` directory then takes over and back translates to nucleotides, does the alignments and converts to HMMER profiles.

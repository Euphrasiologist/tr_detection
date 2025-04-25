# using the `../working/TR_tbl_outputs/all_tr_seqs.fasta`
# recreate the HMM, which was initially formed from fajkus.

# align
# /software/team301/mafft-7.525-with-extensions/core/mafft \
    # --genafpair --maxiterate 1000 \
    # ../working/TR_tbl_outputs/all_tr_seqs.fasta > ../working/TR_tbl_outputs/all_tr_seqs.aln

# create HMM
/software/team301/hmmer-3.4/src/hmmbuild -n all_tr_seqs ../working/TR_tbl_outputs/all_tr_seqs.hmm ../working/TR_tbl_outputs/all_tr_seqs.aln
/software/team301/hmmer-3.4/src/hmmpress ../working/TR_tbl_outputs/all_tr_seqs.hmm

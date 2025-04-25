# Getting the TR genes

First run `run_tr_hmms.bash`. This generates the TR `.tbl` output files in `../working/TR_tbl_outputs`. Then run `get_all_tr_seqs.bash`, which extracts all significant hits (E < 0.00001).

## Iterating the TR extraction

Using the `../working/TR_tbl_outputs/all_tr_seqs.fasta` file, we can realign this, and create a new HMM. Run XXX.

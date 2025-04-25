# a script to iterate over all the 
# .tbl files in the current directory
# and extract the sequences of the TRs

PATH_TO_ESLSFETCH="/software/team301/hmmer-3.4/easel/miniapps/esl-sfetch"

for i in ../working/TR_tbl_outputs/*.tbl; do
  BN=$(basename $i .tbl)
  extract_nhmmer_tblout -v 0.00001 -e $PATH_TO_ESLSFETCH -s $BN $i >> ../working/TR_tbl_outputs/all_tr_seqs.fasta
done

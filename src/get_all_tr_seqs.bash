# a script to iterate over all the 
# .tbl files in the current directory
# and extract the sequences of the TRs

PATH_TO_ESLSFETCH="/software/team301/hmmer-3.4/easel/miniapps/esl-sfetch"

for i in *.tbl; do
  BN=$(basename $i .tbl)
  extract_nhmmer_tblout -v 0.000000000001 -e $PATH_TO_ESLSFETCH -s $BN $i >> all_tr_seqs.fasta
done

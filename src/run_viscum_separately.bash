# /software/team301/hmmer-3.4/src/nhmmer --dna \
# --tblout ../working/TR_tbl_outputs/Viscum_album_again.tbl \
# --cpu 10 ../working/TR_tbl_outputs/all_tr_seqs.hmm \
# /lustre/scratch124/tol/projects/darwin/data/dicots/Viscum_album/assembly/curated/drVisAlbu1.1/drVisAlbu1.1.primary.fa.gz

PATH_TO_ESLSFETCH="/software/team301/hmmer-3.4/easel/miniapps/esl-sfetch"
extract_nhmmer_tblout -v 1 -e $PATH_TO_ESLSFETCH -s Viscum_album ../working/TR_tbl_outputs/Viscum_album_again.tbl > viscum.fasta

# a simple pipeline to run nhmmer across all dicots
# using our TR.hmm file

i=0 n=0

for file in /lustre/scratch124/tol/projects/darwin/data/dicots/*/assembly/curated/*/*primary.fa.gz; do 
  # get the species name
  species=$(echo $file | cut -d '/' -f 9)
  ((n >= i )) && echo "Running nhmmer on $species"
  # run nhmmer
  # ((n >= i )) && /software/team301/hmmer-3.4/src/nhmmer --dna --cpu 10 --tblout "$species.tbl" TR.hmm $file
  ((n++))
done

# ./src/run_tr_hmms.bash

# a simple pipeline to run nhmmer across all dicots
# using our ../original_data/TR.hmm file

# we use the ../working/dtol_plant_paths.txt for the list of dicot paths

# 10GB
mbMem=10000

while read file; do
  # get the species name
  species=$(echo $file | cut -d '/' -f 9)
  echo "Running nhmmer on $species"
  echo "  with file $file"
  echo "  output will be ../working/TR_tbl_outputs/$species.tbl"
  echo ""
  # run nhmmer
  bsub -n 20 -q small -R"span[hosts=1] select[mem>${mbMem}] rusage[mem=${mbMem}]" -M${mbMem} -o ./logs/${spp}.out -e ./logs/${spp}.err "/software/team301/hmmer-3.4/src/nhmmer --dna --cpu 20 --tblout "../working/TR_tbl_outputs/$species.tbl" ../original_data/TR.hmm $file"
done < ../working/latest_plant_assemblies.txt

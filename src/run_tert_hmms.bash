# similar to TR pipeline but
# with TERT. a bit different because there are multiple exons

mkdir ../working/TERT_tbl_outputs

while read file; do
  # get the species name
  species=$(echo $file | cut -d" " -f1)
  path=$(echo $file | cut -d" " -f2)

  echo "Running nhmmer on $species"
  echo "  with file $path"
  echo "  output will be ../working/TERT_tbl_outputs/$species.tbl"
  echo ""
  # run nhmmer
  mkdir ../working/TERT_tbl_outputs/$species
  /software/team301/hmmer-3.4/src/nhmmer --dna --cpu 20 --tblout "../working/TERT_tbl_outputs/$species/${species}_isoformx1.tbl" ../original_data/tert/clusters/isoform_X1_tert.hmm $path
  /software/team301/hmmer-3.4/src/nhmmer --dna --cpu 20 --tblout "../working/TERT_tbl_outputs/$species/${species}_catalytic_subunit.tbl" ../original_data/tert/clusters/catalytic_subunit_tert.hmm $path
  /software/team301/hmmer-3.4/src/nhmmer --dna --cpu 20 --tblout "../working/TERT_tbl_outputs/$species/${species}_tert1.tbl" ../original_data/tert/clusters/tert1.hmm $path
done < ../working/dtol_plant_paths.txt

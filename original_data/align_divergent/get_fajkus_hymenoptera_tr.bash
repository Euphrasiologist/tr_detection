# get the data from efetch
while read -r id; do
    echo "Fetching FASTA for ID: $id"
    /software/team301/edirect/efetch -db nucleotide -id "$id" -format fasta >> fajkus_hymenoptera_tr.fasta
done < fajkus_hymenoptera_tr.txt

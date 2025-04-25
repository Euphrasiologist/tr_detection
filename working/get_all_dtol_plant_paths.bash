fd "primary.fa.gz" /lustre/scratch124/tol/projects/darwin/data/{dicots,monocots,vascular-plants,non-vascular-plants}/*/assembly/curated/*/ | sort > temp_paths.txt

awk -F'/' '{ split($12, parts, "."); key = parts[1]; date = parts[2]; if(!seen[key] || date > latest[key]) { seen[key] = $0; latest[key] = date; } } END { for (k in seen) print seen[k] }' temp_paths.txt > latest_plant_assemblies.txt

rm temp_paths.txt

# requires a few manual edits

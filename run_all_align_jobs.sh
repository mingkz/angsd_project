all_jobs=$(ls align*.bash)

for f in $all_jobs
do
  sbatch $f
done

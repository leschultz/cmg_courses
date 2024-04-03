# We can submit a job usling slurm as follows:

job_id=$(sbatch submit.sh | awk '{print $4}')

# The variable job_id now has the id of the submitted job. We can then monitor the job with the following:
squeue -u

# Variables
sub_file=submit.sh

# Simple bash function
wait_here()
{
        echo $(printf "%0.s-" {1..79})
	local mes=$1
	echo $1
	echo $(printf "%0.s-" {1..79})
	sleep 2s
}

# We can submit a job usling slurm.
job_id=$(sbatch ${sub_file} | awk '{print $4}')
wait_here "You just submitted job ${job_id} where ${sub_file} contains the details of the resources requested"

# The variable job_id now has the id of the submitted job. We can then monitor the job.
wait_here "Check the checking the status ${job_id}"
squeue -j ${job_id}

# See many details from job.
wait_here "Show the details of ${job_id}"
scontrol show job ${job_id}

# Delete the job.
wait_here "Removing/deleting ${job_id}"
scancel ${job_id}

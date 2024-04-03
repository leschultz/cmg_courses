# Lesson 1

Basic job submission, monitoring, and deletion through the use of slurm. Read user_run_this.sh for detailed steps.

Submit a job with

```
sbatch submit.sh
```

You will get an output job id as a number. For the sake of this tutorial, assume that the id is 42. You an then check the status of the job with

```
squeue -j 42
```

We can check more detailed information with

```
scontrol show job -j 42
```

IF the submitted calculation is wrong or no longer needed, we can delete the job with

```
scancel 42
```

Remember to check the details of mean comand used with the manual. For example, let's check the manual entry for squeue

```
man squeue
```

Hit q to exit out of the manual entry.

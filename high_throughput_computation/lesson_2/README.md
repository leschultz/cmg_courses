# Lesson 2: Use a template and modify slightly to generate n number of jobs

Create jobs with:

```
bash create_jobs.sh
```

Submit jobs with:

```
bash submit_jobs.sh
```

Remember that you can change the type of computation performed by modifying the job in template. You can then change variables in a script by replacing them with sed and submitting each as individual jobs across many computers. If the submitted jobs are no longer needed but you do not want to scancel each individual job, you can delte job 42 through 70 with the following:

```
scancel {42..70}
```

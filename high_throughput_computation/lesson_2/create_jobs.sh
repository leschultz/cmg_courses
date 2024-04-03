# Variables
top_dir="jobs"
n=(1 2 3 4)

# Create job in loop
for i in ${n[@]}
do

    job_dir="${top_dir}/job_${i}"

    echo "Making job ${job_dir}"

    mkdir -p ${job_dir}
    cp template/* ${job_dir}

    cd ${job_dir}
    sed -i "s/replace_number/${i}/g" computation.py
    cd - > /dev/null

done

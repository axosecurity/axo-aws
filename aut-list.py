import subprocess

# Path to the file containing the bucket names
bucket_file = "bucket.list.txt"

# Read the bucket names from the file
with open(bucket_file, "r") as file:
    bucket_names = file.read().splitlines()

# Iterate over the bucket names and run the command for each bucket
for bucket_name in bucket_names:
    command = f"aws s3 ls s3://{bucket_name} ; echo {bucket_name} "
    subprocess.run(command, shell=True)

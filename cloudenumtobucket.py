import re
import argparse

print("Cloudenum to s3bucket file extractor AXO-AWS")


def extract_bucket_names(file_location, output_file):
    with open(file_location, 'r') as file:
        data = file.read()
        bucket_names = re.findall(r'http[s]?://([\w.-]+)\.s3\.amazonaws\.com', data)
    
    with open(output_file, 'w') as file:
        for name in bucket_names:
            file.write(name + '\n')

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("-b", "--file_location", help="Location of the file containing bucket names")
    parser.add_argument("-o", "--output_file", help="Output file to store the extracted bucket names")
    args = parser.parse_args()

    if args.file_location and args.output_file:
        extract_bucket_names(args.file_location, args.output_file)
    else:
        print("Please provide both the file location and output file arguments. -b for file location and -o for output file ")

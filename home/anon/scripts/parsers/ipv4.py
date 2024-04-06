import re

# Open the source file for reading
with open('/home/anon/nodes.txt', 'r') as source_file:
    data = source_file.read()

# Extract CIDR notations in the format of "10.0.0.1"
cidrs = re.findall(r'\b(?:\d{1,3}\.){3}\d{1,3}\b', data)

# Open the destination file for writing
with open('/home/anon/destination_file.txt', 'w') as dest_file:
    dest_file.write(','.join(cidrs))

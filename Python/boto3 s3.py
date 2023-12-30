import boto3
client = boto3.client('s3')

response = client.get_bucket_acl(
    Bucket='abs-23921-ft',
)

# Access the 'Owner' key in the response dictionary
owner_info = response['Owner']

print(type(response))
# Print or use the owner information as needed
print(owner_info)
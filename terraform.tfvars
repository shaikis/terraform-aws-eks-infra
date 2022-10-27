aws_region = "us-east-1"
#private_subnet_ids = [
#  "subnet-0f2a46d6caa6ee9f1",
#  "subnet-0ead2f999b67fb259",
#  "subnet-004f00dea05708ec9",
#]
#public_subnet_ids = [
#  "subnet-0c0aabd26b3950d0b",
#  "subnet-0dcb720e993b8ad86",
#  "subnet-029493888b590ab3f",
#]
#vpc_id = "vpc-079c2ea97cdc9a94f"

clusters_name_prefix  = "EHTclusters"
cluster_version       = "1.23"
workers_instance_type = "t3.medium"
workers_number_min    = 2
workers_number_max    = 3
workers_storage_size  = 10

vpc_block            = "10.155.0.0/17"
public_subnets_prefix_list = [
  "10.155.0.0/20",
  "10.155.16.0/20",
  "10.155.32.0/20",
]
private_subnets_prefix_list = [
  "10.155.64.0/20",
  "10.155.80.0/20",
  "10.155.96.0/20",
]
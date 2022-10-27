aws_region = "us-east-1"
clusters_name_prefix  = "ehtclusters"
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
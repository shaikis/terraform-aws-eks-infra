variable "aws_region" {
  type = string
}

variable "clusters_name_prefix" {
  type = string
}

variable "cluster_version" {
  type = string
}

variable "workers_storage_size" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "public_subnet_ids" {
  type = list(string)
}

variable "private_subnet_ids" {
  type = list(string)
}

variable "workers_instance_type" {
  type = string
}

variable "workers_number_min" {
  type = string
}

variable "workers_number_max" {
  type = string
}


#### VPC Module related parameters ####################
variable "vpc_block" {
  type = string
}

variable "public_subnets_prefix_list" {
  type = list(string)
}

variable "private_subnets_prefix_list" {
  type = list(string)
}
############################################################
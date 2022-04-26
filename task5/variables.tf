variable "aws_region" {
  description = "The AWS Region to use for."
  type        = string
  default     = "us-east-1"
}
variable "os_platform_owner" {
  description = "The platform owner to use in image search."
  type        = string
  default     = "amazon"
}
variable "os_platform_name" {
  description = "The image pattern to use in filter search."
  type        = string
  default     = "amzn2-ami-kernel-5.10-hvm*-x86_64-gp2"
}
variable "prefix_name" {
  description = "The prefix name to use in configuration."
  type        = string
  default     = ""
}
variable "environment" {
  description = "The environment name to use in configuration."
  type        = string
  default     = "test"
}
variable "instance_type" {
  description = "The EC2 instance type to use."
  type        = string
  default     = "t2.micro"
}
variable "pub_key_name" {
  description = "The public KeyPair name."
  type        = string
  default     = ""
}
variable "root_vol_size" {
  description = "The root block device size in Gb."
  type        = number
  default     = 30
}
variable "root_vol_type" {
  description = "The root block device type."
  type        = string
  default     = "gp3"
}
variable "asg_max_size" {
  description = "The maximum size of the Auto Scaling Group."
  type        = number
  default     = 2
}
variable "asg_min_size" {
  description = "The minimum size of the Auto Scaling Group."
  type        = number
  default     = 1
}
variable "vpc_id" {
  description = "A VPC ID."
  type        = string
  default     = ""
}
variable "ami_owner" {
  description = "List of AMI owners to limit search. At least 1 value must be specified."
  type        = string
  default     = "amazon"
}
variable "image_id" {
  description = "The ECS optimized EC2 image ID to launch."
  type        = string
  default     = ""
}
variable "cluster_name" {
  description = "Name of the cluster (up to 255 letters, numbers, hyphens, and underscores)"
  type        = string
  default     = ""
}
variable "default_user_data_template_file" {
  description = "Default user-data file."
  type        = string
  default     = "default_user-data.sh"
}
variable "user_data" {
  description = "Main user-data."
  type        = string
  default     = ""
}
variable "service_name" {
  description = "The ECS service name."
  type        = string
  default     = ""
}
variable "unique_name" {
  description = "The ECS task definition unique name."
  type        = string
  default     = ""
}
variable "additional_tags" {
  description = "Common Tags to be merged with main tags."
  type        = map(string)
  default     = {}
}
variable "launch_config_name" {
  description = "The Launch Configuration name."
  type        = string
  default     = "lcfg"
}
variable "asg_name" {
  description = "The Auto-Scaling Group name."
  type        = string
  default     = "asg"
}

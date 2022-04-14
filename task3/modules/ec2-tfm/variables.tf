variable "additional_tags" {
    description = "Common Tags to be merged with main tags."
    type = map(string)
    default = {}
}
variable "user_data_template_file" {
    description = "User-Data template filename"
    type = string
    default = "init.tftpl"
}
variable "tls_algorithm" {
    description = "TLS Private Key algorithm type."
    type = string
    default = null
}
variable "tls_rsa_bits" {
    description = "TLS RSA Bits"
    type = number
    default = null
}
variable "pub_key_name" {
    description = "Path to your public key."
    type = string
    default = ""
}
variable "prefix_name" {
    description = "The prefix name to be used in namings."
    type = string
    default = ""
}
variable "environment" {
    description = "The environment name to be used."
    type = string
    default = "dev"
}
variable "instance_count" {
    description = "The count of instances to be created. By default one will be created."
    type = number
    default = 1
}
variable "ami_id" {
    description = "The AMI id to be used."
    type = string
    default = ""
}
variable "vpc_security_group_ids" {
    description = "VPC Security Group ID."
    type = list(string)
    default = []
}
variable "subnet_id" {
    description = "The VPC subnet ID"
    type = string
    default = ""
}
variable "instance_name" {
    description = "Your Instance name."
    type = string
    default = "server"
}
variable "instance_type" {
    description = "The default instance type to be used in."
    type = string
    default = "t2.micro"
}
variable "your_first_name" {
    description = "Your first name to be used in environment configuration."
    type = string
    default = ""
}
variable "your_last_name" {
    description = "Your last name to be used in environment configuration."
    type = string
    default = ""
}
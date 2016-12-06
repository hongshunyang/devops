variable "public_key_path" {
  description = <<DESCRIPTION
Path to the SSH public key to be used for authentication.
Ensure this keypair is added to your local SSH agent so provisioners can
connect.

Example: ~/.ssh/terraform.pub
DESCRIPTION
}

variable "aws_instance_user" {
  description = "free tier"
  default = "ubuntu"
}


variable "aws_instance_type" {
  description = "free tier"
  default = "t2.micro"
}

variable "key_name" {
  description = "Desired name of AWS key pair"
  default = "terraform"
}

variable "aws_region" {
  description = "AWS region to launch servers."
  default     = "us-west-1"
}

# EBS General Purpose (SSD) Volume Type
# Ubuntu Server 16.04 LTS (HVM,x64), SSD Volume Type 
variable "aws_amis" {
  default = {
    us-west-1 = "ami-6e165d0e"
    us-west-2 = "ami-a9d276c9"
    us-east-2 = "ami-153e6470"
    us-east-1 = "ami-40d28157"
  }
}

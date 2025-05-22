variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "az_1a" {
  description = "Availability zone for EC2"
  type        = string
  default     = "us-east-1a"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "instance_name" {
  description = "Name tag for the EC2 instance"
  type        = string
  default     = "MyInstance"
}

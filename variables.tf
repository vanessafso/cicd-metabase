variable "aws_region" {
  type        = string
  description = ""
  default     = "us-east-1"
}

variable "instance_type" {
  type        = string
  description = ""
  default     = "t3.micro"
}

variable "instance_key_name" {
  type        = string
  description = ""
  default     = "access_key"
}
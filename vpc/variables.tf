variable "block_cidr" {
  type = string
  default = "10.0.0.0/16"
}

variable "public_cidr" {
  type = list(string)
}

variable "private_cidr" {
  type = list(string)
}

variable "environment" {
  type = string
}
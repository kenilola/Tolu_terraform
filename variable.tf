variable "region" {
    default = "eu-west-1"
  
}

variable "instance_type" {
    default = "t2.micro"
}

variable "vpc_id" {
    default = ""
  
}

variable "key_name" {
    default = "jojo_keypair_ireland"
  
}
variable "instance_ami" {
    default = "ami-07edc58546d708802"

  
}
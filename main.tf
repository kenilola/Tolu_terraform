provider "aws" {
    region =var.region
  
}
resource "aws_security_group" "keni_sg" {
    name ="keni_sg"
    description = "allow all traffic"
    ingress {
      from_port = 22
      to_port = 22
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/10"]

    }
    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/10"]



    }
    egress {
        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = ["0.0.0.0/10"]


    }

    tags = {
        name ="TOterraformSG"


    }
  
}

resource "aws_instance" "Tolu_instance" {
    ami =var.instance_ami
    instance_type = var.instance_type
    key_name = var.key_name
    user_data = file("apache.sh")
    
    tags = {
        name ="toluinstance"


    }
  
}
resource "aws_vpc" "vpc_virginia" {
    cidr_block = "10.10.0.0/16"
    tags = {
        Name = "VPC_VIRGINIA"
        env = "prueba"
        name = "Dev"
    }
}

resource "aws_vpc" "vpc_ohio" {
    cidr_block = "10.20.0.0/16"
    tags = {
        Name = "VPC_OHIO"
        env = "prueba"
        name = "Dev"
    }
    provider = aws.ohio
}
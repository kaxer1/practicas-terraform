resource "aws_vpc" "vpc_virginia" {
    cidr_block = var.virginia_cidr
    tags = {
        Name = "VPC_VIRGINIA"
        env = "prueba"
        name = "Dev"
    }
}

resource "aws_vpc" "vpc_ohio" {
    cidr_block = var.ohio_cidr
    tags = {
        Name = "VPC_OHIO"
        env = "prueba"
        name = "Dev"
    }
    provider = aws.ohio
}
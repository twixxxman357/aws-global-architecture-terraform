# Create an Internet Gateway for the Tokyo VPC
resource "aws_internet_gateway" "tokyo-igw" {
  vpc_id = aws_vpc.tokyo-vpc.id
  provider = aws.tokyo

  tags = {
    Name: "${var.env_prefix_tokyo}-igw"
    Service: "Armageddon Phase 1"     
    Owner = "MATTRESS AVENGERS" 
  }
}

#Create an Internet Gateway for the New York VPC
resource "aws_internet_gateway" "newyork-igw" {
  vpc_id = aws_vpc.newyork-vpc.id
  provider = aws.new-york

  tags = {
    Name: "${var.env_prefix_newyork}-igw"
    Service: "Armageddon Phase 1"     
    Owner = "MATTRESS AVENGERS" 
  }
}

# Create an Internet Gateway for the London VPC
resource "aws_internet_gateway" "london-igw" {
  vpc_id = aws_vpc.london-vpc.id
  provider = aws.london

  tags = {
    Name: "${var.env_prefix_london}-igw"
    Service: "Armageddon Phase 1"     
    Owner = "MATTRESS AVENGERS" 
  }
}

# Create an Internet Gateway for the Sao Paulo VPC
resource "aws_internet_gateway" "saopaulo-igw" {
  vpc_id = aws_vpc.saopaulo-vpc.id
  provider = aws.sao-paulo

  tags = {
    Name: "${var.env_prefix_saopaulo}-igw"
    Service: "Armageddon Phase 1"    
    Owner = "MATTRESS AVENGERS" 
  }
}

# Create an Internet Gateway for the Australia VPC
resource "aws_internet_gateway" "australia-igw" {
  vpc_id = aws_vpc.australia-vpc.id
  provider = aws.australia

  tags = {
    Name: "${var.env_prefix_australia}-igw"
    Service: "Armageddon Phase 1"     
    Owner = "MATTRESS AVENGERS" 
  }
}

# Create an Internet Gateway for the Hong Kong VPC
resource "aws_internet_gateway" "hongkong-igw" {
  vpc_id = aws_vpc.hongkong-vpc.id
  provider = aws.hong-kong

  tags = {
    Name: "${var.env_prefix_hongkong}-igw"
    Service: "Armageddon Phase 1"     
    Owner = "MATTRESS AVENGERS" 
  }
}

# Create an Internet Gateway for the California VPC
resource "aws_internet_gateway" "california-igw" {
  vpc_id = aws_vpc.california-vpc.id
  provider = aws.california

  tags = {
    Name: "${var.env_prefix_california}-igw"
    Service: "Armageddon Phase 1"     
    Owner = "MATTRESS AVENGERS" 
  }
}

# Create an Internet Gateway for the Tokyo Test VPC

resource "aws_internet_gateway" "tokyotest-igw" {
  vpc_id = aws_vpc.tokyotest-vpc.id
  provider = aws.tokyo-testb

  tags = {
    Name    = "TokyoTest_IG"
    Service: "Armageddon Phase 1"   
    Owner = "MATTRESS AVENGERS"   
  }
}

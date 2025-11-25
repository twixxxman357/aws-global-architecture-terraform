/////////////////////////////////////////////////////////////////////////////////////////////////////////////////

# Create a NAT Gateway for the Tokyo VPC
resource "aws_eip" "tokyo-nat" {
  provider = aws.tokyo
  # vpc = true

  tags = {
    Name = "tokyo-nat"
  }
}

resource "aws_nat_gateway" "tokyo-nat" {
  allocation_id = aws_eip.tokyo-nat.id
  subnet_id     = aws_subnet.tokyo-public-subnet-1a.id
  provider = aws.tokyo

  tags = {
    Name = "tokyo-nat"
  }

  depends_on = [aws_internet_gateway.tokyo-igw]
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////

# Create a NAT Gateway for the New York VPC
resource "aws_eip" "newyork-nat" {
  provider = aws.new-york
  # vpc = true

  tags = {
    Name = "newyork-nat"
  }
}

resource "aws_nat_gateway" "newyork-nat" {
  allocation_id = aws_eip.newyork-nat.id
  subnet_id     = aws_subnet.newyork-public-subnet-1a.id
  provider = aws.new-york

  tags = {
    Name = "newyork-nat"
  }

  depends_on = [aws_internet_gateway.newyork-igw]
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

# Create a NAT Gateway for the London VPC
resource "aws_eip" "london-nat" {
  provider = aws.london
  # vpc = true

  tags = {
    Name = "london-nat"
  }
}

resource "aws_nat_gateway" "london-nat" {
  allocation_id = aws_eip.london-nat.id
  subnet_id     = aws_subnet.london-public-subnet-2a.id
  provider = aws.london

  tags = {
    Name = "london_nat"
  }

  depends_on = [aws_internet_gateway.london-igw]
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

# Create a NAT Gateway for the Sao Paulo VPC
resource "aws_eip" "saopaulo-nat" {
  provider = aws.sao-paulo
  # vpc = true

  tags = {
    Name = "saopaulo-nat"
  }
}

resource "aws_nat_gateway" "saopaulo-nat" {
  allocation_id = aws_eip.saopaulo-nat.id
  subnet_id     = aws_subnet.saopaulo-public-subnet-1a.id
  provider = aws.sao-paulo

  tags = {
    Name = "saopaulo-nat"
  }

  depends_on = [aws_internet_gateway.saopaulo-igw]
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

# Create a NAT Gateway for the Australia VPC
resource "aws_eip" "australia-nat" {
  provider = aws.australia
  # vpc = true

  tags = {
    Name = "australia-nat"
  }
}

resource "aws_nat_gateway" "australia-nat" {
  allocation_id = aws_eip.australia-nat.id
  subnet_id     = aws_subnet.australia-public-subnet-2a.id
  provider = aws.australia

  tags = {
    Name = "australia-nat"
  }

  depends_on = [aws_internet_gateway.australia-igw]
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

# Create a NAT Gateway for the Hong Kong VPC
resource "aws_eip" "hongkong-nat" {
  provider = aws.hong-kong
  # vpc = true

  tags = {
    Name = "hongkong-nat"
  }
}

resource "aws_nat_gateway" "hongkong-nat" {
  allocation_id = aws_eip.hongkong-nat.id
  subnet_id     = aws_subnet.hongkong-public-subnet-1a.id
  provider = aws.hong-kong

  tags = {
    Name = "hongkong-nat"
  }

  depends_on = [aws_internet_gateway.hongkong-igw]
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

# Create a NAT Gateway for the California VPC
resource "aws_eip" "california-nat" {
  provider = aws.california
  # vpc = true

  tags = {
    Name = "california-nat"
  }
}

resource "aws_nat_gateway" "california-nat" {
  allocation_id = aws_eip.california-nat.id
  subnet_id     = aws_subnet.california-public-subnet-1c.id
  provider = aws.california

  tags = {
    Name = "california-nat"
  }

  depends_on = [aws_internet_gateway.california-igw]
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

# Create a NAT Gateway for the Tokyo Test VPC
resource "aws_eip" "tokyotest-nat" {
  provider = aws.tokyo-testb
  # vpc = true

  tags = {
    Name = "tokyotest-nat"
  }
}

resource "aws_nat_gateway" "tokyotest-nat" {
  allocation_id = aws_eip.tokyotest-nat.id
  subnet_id     = aws_subnet.tokyotest-public-subnet-1a.id
  provider = aws.tokyo-testb

  tags = {
    Name = "tokyotest-nat"
  }

  depends_on = [aws_internet_gateway.tokyotest-igw]
}

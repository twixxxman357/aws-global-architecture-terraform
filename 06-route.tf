//////////////////////////////////////////////////////////////////////////////////////////////////////////


# Create Route Table and Route Table Association for Tokyo


//Tokyo Private Route Table 

resource "aws_route_table" "tokyo-private" {
  vpc_id = aws_vpc.tokyo-vpc.id
  provider = aws.tokyo

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      nat_gateway_id             = aws_nat_gateway.tokyo-nat.id
      carrier_gateway_id         = null
      destination_prefix_list_id = null
      egress_only_gateway_id     = null
      gateway_id                 = null
      instance_id                = null
      ipv6_cidr_block            = null
      local_gateway_id           = null
      network_interface_id       = null
      transit_gateway_id         = null
      vpc_endpoint_id            = null
      vpc_peering_connection_id  = null
      core_network_arn           = null
    },
  ]

  tags = {
    Name = "tokyo-private"
  }
}

//Tokyo Public Route Table 

resource "aws_route_table" "tokyo-public" {
  vpc_id = aws_vpc.tokyo-vpc.id
  provider = aws.tokyo

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      gateway_id                 = aws_internet_gateway.tokyo-igw.id
      nat_gateway_id             = null
      carrier_gateway_id         = null
      destination_prefix_list_id = null
      egress_only_gateway_id     = null
      instance_id                = null
      ipv6_cidr_block            = null
      local_gateway_id           = null
      network_interface_id       = null
      transit_gateway_id         = null
      vpc_endpoint_id            = null
      vpc_peering_connection_id  = null
      core_network_arn           = null
    },
  ]

  tags = {
    Name = "tokyo-public"
  }
}


//Tokyo Private Route Table Associations

resource "aws_route_table_association" "tokyo-private-a" {
  provider = aws.tokyo
  subnet_id      = aws_subnet.tokyo-private-subnet-1a.id
  route_table_id = aws_route_table.tokyo-private.id
}

resource "aws_route_table_association" "tokyo-private-d" {
  provider = aws.tokyo
  subnet_id      = aws_subnet.tokyo-private-subnet-1d.id
  route_table_id = aws_route_table.tokyo-private.id
}


//Tokyo Public Route Table Associations

resource "aws_route_table_association" "tokyo-public-a" {
  provider = aws.tokyo
  subnet_id      = aws_subnet.tokyo-public-subnet-1a.id
  route_table_id = aws_route_table.tokyo-public.id
}

resource "aws_route_table_association" "tokyo-public-d" {
  provider = aws.tokyo
  subnet_id      = aws_subnet.tokyo-public-subnet-1d.id
  route_table_id = aws_route_table.tokyo-public.id
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


# Create Route Table and Route Table Association for New York


//New York Private Route Table 


resource "aws_route_table" "newyork-private" {
  vpc_id = aws_vpc.newyork-vpc.id
  provider = aws.new-york

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      nat_gateway_id             = aws_nat_gateway.newyork-nat.id
      carrier_gateway_id         = null
      destination_prefix_list_id = null
      egress_only_gateway_id     = null
      gateway_id                 = null
      instance_id                = null
      ipv6_cidr_block            = null
      local_gateway_id           = null
      network_interface_id       = null
      transit_gateway_id         = null
      vpc_endpoint_id            = null
      vpc_peering_connection_id  = null
      core_network_arn           = null
    },
  ]

  tags = {
    Name = "newyork-private"
  }
}


//New York Public Route Table 



resource "aws_route_table" "newyork-public" {
  vpc_id = aws_vpc.newyork-vpc.id
  provider = aws.new-york

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      gateway_id                 = aws_internet_gateway.newyork-igw.id
      nat_gateway_id             = null
      carrier_gateway_id         = null
      destination_prefix_list_id = null
      egress_only_gateway_id     = null
      instance_id                = null
      ipv6_cidr_block            = null
      local_gateway_id           = null
      network_interface_id       = null
      transit_gateway_id         = null
      vpc_endpoint_id            = null
      vpc_peering_connection_id  = null
      core_network_arn           = null
    },
  ]

  tags = {
    Name = "newyork-public"
  }
}


//New York Private Route Table Associations


resource "aws_route_table_association" "newyork-private-a" {
  provider = aws.new-york
  subnet_id      = aws_subnet.newyork-private-subnet-1a.id
  route_table_id = aws_route_table.newyork-private.id
}

resource "aws_route_table_association" "newyork-private-b" {
  provider = aws.new-york
  subnet_id      = aws_subnet.newyork-private-subnet-1b.id
  route_table_id = aws_route_table.newyork-private.id
}


//New York Public Route Table Associations

resource "aws_route_table_association" "newyork-public-a" {
  provider = aws.new-york
  subnet_id      = aws_subnet.newyork-public-subnet-1a.id
  route_table_id = aws_route_table.newyork-public.id
}

resource "aws_route_table_association" "newyork-public-b" {
  provider = aws.new-york
  subnet_id      = aws_subnet.newyork-public-subnet-1b.id
  route_table_id = aws_route_table.newyork-public.id
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

# Create Route Table and Route Table Association for London

//London Private Route Table 


resource "aws_route_table" "london-private" {
  vpc_id = aws_vpc.london-vpc.id
  provider = aws.london

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      nat_gateway_id             = aws_nat_gateway.london-nat.id
      carrier_gateway_id         = null
      destination_prefix_list_id = null
      egress_only_gateway_id     = null
      gateway_id                 = null
      instance_id                = null
      ipv6_cidr_block            = null
      local_gateway_id           = null
      network_interface_id       = null
      transit_gateway_id         = null
      vpc_endpoint_id            = null
      vpc_peering_connection_id  = null
      core_network_arn           = null
    },
  ]

  tags = {
    Name = "london-private"
  }
}


//London Public Route Table 


resource "aws_route_table" "london-public" {
  vpc_id = aws_vpc.london-vpc.id
  provider = aws.london

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      gateway_id                 = aws_internet_gateway.london-igw.id
      nat_gateway_id             = null
      carrier_gateway_id         = null
      destination_prefix_list_id = null
      egress_only_gateway_id     = null
      instance_id                = null
      ipv6_cidr_block            = null
      local_gateway_id           = null
      network_interface_id       = null
      transit_gateway_id         = null
      vpc_endpoint_id            = null
      vpc_peering_connection_id  = null
      core_network_arn           = null
    },
  ]

  tags = {
    Name = "london-public"
  }
}

//London Private Route Table Associations


resource "aws_route_table_association" "london-private-a" {
  provider = aws.london
  subnet_id      = aws_subnet.london-private-subnet-2a.id
  route_table_id = aws_route_table.london-private.id
}

resource "aws_route_table_association" "london-private-b" {
  provider = aws.london
  subnet_id      = aws_subnet.london-private-subnet-2b.id
  route_table_id = aws_route_table.london-private.id
}


//London Public Route Table Associations

resource "aws_route_table_association" "london-public-a" {
  provider = aws.london
  subnet_id      = aws_subnet.london-public-subnet-2a.id
  route_table_id = aws_route_table.london-public.id
}

resource "aws_route_table_association" "london-public-b" {
  provider = aws.london
  subnet_id      = aws_subnet.london-public-subnet-2b.id 
  route_table_id = aws_route_table.london-public.id
}


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


# Create Route Table and Route Table Association for Sao-Paulo

//Sao Paulo Private Route Table 


resource "aws_route_table" "saopaulo-private" {
  vpc_id = aws_vpc.saopaulo-vpc.id
  provider = aws.sao-paulo

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      nat_gateway_id             = aws_nat_gateway.saopaulo-nat.id
      carrier_gateway_id         = null
      destination_prefix_list_id = null
      egress_only_gateway_id     = null
      gateway_id                 = null
      instance_id                = null
      ipv6_cidr_block            = null
      local_gateway_id           = null
      network_interface_id       = null
      transit_gateway_id         = null
      vpc_endpoint_id            = null
      vpc_peering_connection_id  = null
      core_network_arn           = null
    },
  ]

  tags = {
    Name = "saopaulo-private"
  }
}

//Sao Paulo Public Route Table 


resource "aws_route_table" "saopaulo-public" {
  vpc_id = aws_vpc.saopaulo-vpc.id
  provider = aws.sao-paulo

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      gateway_id                 = aws_internet_gateway.saopaulo-igw.id
      nat_gateway_id             = null
      carrier_gateway_id         = null
      destination_prefix_list_id = null
      egress_only_gateway_id     = null
      instance_id                = null
      ipv6_cidr_block            = null
      local_gateway_id           = null
      network_interface_id       = null
      transit_gateway_id         = null
      vpc_endpoint_id            = null
      vpc_peering_connection_id  = null
      core_network_arn           = null
    },
  ]

  tags = {
    Name = "saopaulo-public"
  }
}


//Sao Paulo Private Route Table Associations


resource "aws_route_table_association" "saopaulo-private-a" {
  provider = aws.sao-paulo
  subnet_id      = aws_subnet.saopaulo-private-subnet-1a.id
  route_table_id = aws_route_table.saopaulo-private.id
}

resource "aws_route_table_association" "saopaulo-private-c" {
  provider = aws.sao-paulo
  subnet_id      = aws_subnet.saopaulo-private-subnet-1c.id
  route_table_id = aws_route_table.saopaulo-private.id
}


//Sao Paulo Public Route Table Associations

resource "aws_route_table_association" "saopaulo-public-a" {
  provider = aws.sao-paulo
  subnet_id      = aws_subnet.saopaulo-public-subnet-1a.id
  route_table_id = aws_route_table.saopaulo-public.id
}

resource "aws_route_table_association" "sao-paulo-public-c" {
  provider = aws.sao-paulo
  subnet_id      = aws_subnet.saopaulo-public-subnet-1c.id
  route_table_id = aws_route_table.saopaulo-public.id
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////


# Create Route Table and Route Table Association for Australia

//Australia Private Route Table 


resource "aws_route_table" "australia-private" {
  vpc_id = aws_vpc.australia-vpc.id
  provider = aws.australia

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      nat_gateway_id             = aws_nat_gateway.australia-nat.id
      carrier_gateway_id         = null
      destination_prefix_list_id = null
      egress_only_gateway_id     = null
      gateway_id                 = null
      instance_id                = null
      ipv6_cidr_block            = null
      local_gateway_id           = null
      network_interface_id       = null
      transit_gateway_id         = null
      vpc_endpoint_id            = null
      vpc_peering_connection_id  = null
      core_network_arn           = null
    },
  ]

  tags = {
    Name = "australia-private"
  }
}


//Australia Public Route Table 


resource "aws_route_table" "australia-public" {
  vpc_id = aws_vpc.australia-vpc.id
  provider = aws.australia

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      gateway_id                 = aws_internet_gateway.australia-igw.id
      nat_gateway_id             = null
      carrier_gateway_id         = null
      destination_prefix_list_id = null
      egress_only_gateway_id     = null
      instance_id                = null
      ipv6_cidr_block            = null
      local_gateway_id           = null
      network_interface_id       = null
      transit_gateway_id         = null
      vpc_endpoint_id            = null
      vpc_peering_connection_id  = null
      core_network_arn           = null
    },
  ]

  tags = {
    Name = "australia-public"
  }
}


//Australia Private Route Table Associations


resource "aws_route_table_association" "australia-private-a" {
  provider = aws.australia
  subnet_id      = aws_subnet.australia-private-subnet-2a.id
  route_table_id = aws_route_table.australia-private.id
}

resource "aws_route_table_association" "australia-private-b" {
  provider = aws.australia
  subnet_id      = aws_subnet.australia-private-subnet-2a.id
  route_table_id = aws_route_table.australia-private.id
}


//Australia Public Route Table Associations

resource "aws_route_table_association" "australia-public-a" {
  provider = aws.australia
  subnet_id      = aws_subnet.australia-public-subnet-2a.id
  route_table_id = aws_route_table.australia-public.id
}

resource "aws_route_table_association" "australia-public-b" {
  provider = aws.australia
  subnet_id      = aws_subnet.australia-public-subnet-2b.id
  route_table_id = aws_route_table.australia-public.id
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////


# Create Route Table and Route Table Association for Hong Kong


//Hong Kong Private Route Table 


resource "aws_route_table" "hongkong-private" {
  vpc_id = aws_vpc.hongkong-vpc.id
  provider = aws.hong-kong

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      nat_gateway_id             = aws_nat_gateway.hongkong-nat.id
      carrier_gateway_id         = null
      destination_prefix_list_id = null
      egress_only_gateway_id     = null
      gateway_id                 = null
      instance_id                = null
      ipv6_cidr_block            = null
      local_gateway_id           = null
      network_interface_id       = null
      transit_gateway_id         = null
      vpc_endpoint_id            = null
      vpc_peering_connection_id  = null
      core_network_arn           = null
    },
  ]

  tags = {
    Name = "hongkong-private"
  }
}


//Hong Kong Public Route Table 


resource "aws_route_table" "hongkong-public" {
  vpc_id = aws_vpc.hongkong-vpc.id
  provider = aws.hong-kong

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      gateway_id                 = aws_internet_gateway.hongkong-igw.id
      nat_gateway_id             = null
      carrier_gateway_id         = null
      destination_prefix_list_id = null
      egress_only_gateway_id     = null
      instance_id                = null
      ipv6_cidr_block            = null
      local_gateway_id           = null
      network_interface_id       = null
      transit_gateway_id         = null
      vpc_endpoint_id            = null
      vpc_peering_connection_id  = null
      core_network_arn           = null
    },
  ]

  tags = {
    Name = "hongkong-public"
  }
}

//Hong Kong Private Route Table Associations

resource "aws_route_table_association" "hongkong-private-a" {
  provider = aws.hong-kong
  subnet_id      = aws_subnet.hongkong-private-subnet-1a.id
  route_table_id = aws_route_table.hongkong-private.id
}

resource "aws_route_table_association" "hongkong-private-b" {
  provider = aws.hong-kong
  subnet_id      = aws_subnet.hongkong-private-subnet-1b.id
  route_table_id = aws_route_table.hongkong-private.id
}


//Hong Kong Public Route Table Associations

resource "aws_route_table_association" "hongkong-public-a" {
  provider = aws.hong-kong
  subnet_id      = aws_subnet.hongkong-public-subnet-1a.id
  route_table_id = aws_route_table.hongkong-public.id
}

resource "aws_route_table_association" "hong-kong-public-b" {
  provider = aws.hong-kong
  subnet_id      = aws_subnet.hongkong-public-subnet-1b.id
  route_table_id = aws_route_table.hongkong-public.id
}


////////////////////////////////////////////////////////////////////////////////////////////////

# Create Route Table and Route Table Association for California


//California Private Route Table 


resource "aws_route_table" "california-private" {
  vpc_id = aws_vpc.california-vpc.id
  provider = aws.california

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      nat_gateway_id             = aws_nat_gateway.california-nat.id
      carrier_gateway_id         = null
      destination_prefix_list_id = null
      egress_only_gateway_id     = null
      gateway_id                 = null
      instance_id                = null
      ipv6_cidr_block            = null
      local_gateway_id           = null
      network_interface_id       = null
      transit_gateway_id         = null
      vpc_endpoint_id            = null
      vpc_peering_connection_id  = null
      core_network_arn           = null
    },
  ]

  tags = {
    Name = "california-private"
  }
}

//California Public Route Table 


resource "aws_route_table" "california-public" {
  vpc_id = aws_vpc.california-vpc.id
  provider = aws.california

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      gateway_id                 = aws_internet_gateway.california-igw.id
      nat_gateway_id             = null
      carrier_gateway_id         = null
      destination_prefix_list_id = null
      egress_only_gateway_id     = null
      instance_id                = null
      ipv6_cidr_block            = null
      local_gateway_id           = null
      network_interface_id       = null
      transit_gateway_id         = null
      vpc_endpoint_id            = null
      vpc_peering_connection_id  = null
      core_network_arn           = null
    },
  ]

  tags = {
    Name = "california-public"
  }
}


//California Private Route Table Associations

resource "aws_route_table_association" "california-private-c" {
  provider = aws.california
  subnet_id      = aws_subnet.california-private-subnet-1c.id
  route_table_id = aws_route_table.california-private.id
}

resource "aws_route_table_association" "california-private-b" {
  provider = aws.california
  subnet_id      = aws_subnet.california-private-subnet-1b.id
  route_table_id = aws_route_table.california-private.id
}


//California Public Route Table Associations


resource "aws_route_table_association" "california-public-c" {
  provider = aws.california  
  subnet_id      = aws_subnet.california-public-subnet-1c.id
  route_table_id = aws_route_table.california-public.id
}

resource "aws_route_table_association" "california-public-b" {
  provider = aws.california
  subnet_id      = aws_subnet.california-public-subnet-1b.id
  route_table_id = aws_route_table.california-public.id
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


# Create Route Table and Route Table Association for Tokyo-TestB

resource "aws_route_table" "tokyotest-private" {
  vpc_id = aws_vpc.tokyotest-vpc.id
  provider = aws.tokyo-testb

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      nat_gateway_id             = aws_nat_gateway.tokyotest-nat.id
      carrier_gateway_id         = null
      destination_prefix_list_id = null
      egress_only_gateway_id     = null
      gateway_id                 = null
      instance_id                = null
      ipv6_cidr_block            = null
      local_gateway_id           = null
      network_interface_id       = null
      transit_gateway_id         = null
      vpc_endpoint_id            = null
      vpc_peering_connection_id  = null
      core_network_arn           = null
    },
  ]

  tags = {
    Name = "tokyotest-private"
  }
}

resource "aws_route_table" "tokyotest-public" {
  vpc_id = aws_vpc.tokyotest-vpc.id
  provider = aws.tokyo-testb

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      gateway_id                 = aws_internet_gateway.tokyotest-igw.id
      nat_gateway_id             = null
      carrier_gateway_id         = null
      destination_prefix_list_id = null
      egress_only_gateway_id     = null
      instance_id                = null
      ipv6_cidr_block            = null
      local_gateway_id           = null
      network_interface_id       = null
      transit_gateway_id         = null
      vpc_endpoint_id            = null
      vpc_peering_connection_id  = null
      core_network_arn           = null
    },
  ]

  tags = {
    Name = "tokyotest-public"
  }
}

#private

resource "aws_route_table_association" "tokyotest-private-b" {
  provider = aws.tokyo-testb
  subnet_id      = aws_subnet.tokyotest-private-subnet-1a.id
  route_table_id = aws_route_table.tokyotest-private.id
}

#public

resource "aws_route_table_association" "tokyotest-public-a" {
  provider = aws.tokyo-testb
  subnet_id      = aws_subnet.tokyotest-public-subnet-1a.id
  route_table_id = aws_route_table.tokyotest-public.id
}

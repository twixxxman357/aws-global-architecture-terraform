/////////////////////////////////////////////////////////////////////////////

#Public Subnet Tokyo

resource "aws_subnet" "tokyo-public-subnet-1a" {                
    vpc_id = aws_vpc.tokyo-vpc.id                     
    cidr_block = var.subnet_cidr_block_tokyo-public1a              
    availability_zone = var.avail_zone_tokyo-public1a 
    provider    = aws.tokyo        
    tags = {                                           
        Name: "${var.env_prefix_tokyo}-subnet-1a"  
        Service: "Armageddon Phase 1"   
        Owner = "MATTRESS AVENGERS"         
    }
}


resource "aws_subnet" "tokyo-public-subnet-1d" {                
    vpc_id = aws_vpc.tokyo-vpc.id                     
    cidr_block = var.subnet_cidr_block_tokyo-public1d              
    availability_zone = var.avail_zone_tokyo-public1d      
    provider    = aws.tokyo 
    tags = {                                           
        Name: "${var.env_prefix_tokyo}-subnet-1d"     
        Service: "Armageddon Phase 1"
        Owner = "MATTRESS AVENGERS"         
    }
}



#Private Subnet Tokyo


resource "aws_subnet" "tokyo-private-subnet-1a" {                
    vpc_id = aws_vpc.tokyo-vpc.id                     
    cidr_block = var.subnet_cidr_block_tokyo-private1a              
    availability_zone = var.avail_zone_tokyo-private1a    
    provider    = aws.tokyo     
    tags = {                                           
        Name: "${var.env_prefix_tokyo}-subnet-1a"   
        Service: "Armageddon Phase 1"  
        Owner = "MATTRESS AVENGERS"         
    }
}



resource "aws_subnet" "tokyo-private-subnet-1d"{                
    vpc_id = aws_vpc.tokyo-vpc.id                     
    cidr_block = var.subnet_cidr_block_tokyo-private1d              
    availability_zone = var.avail_zone_tokyo-private1d      
    provider    = aws.tokyo  
    tags = {                                           
        Name: "${var.env_prefix_tokyo}-subnet-1d"     
        Service: "Armageddon Phase 1"
        Owner = "MATTRESS AVENGERS"         
    }
}


//////////////////////////////////////////////////////////////////////////////////


#Public Subnet New York

resource "aws_subnet" "newyork-public-subnet-1a"{                
    vpc_id = aws_vpc.newyork-vpc.id                     
    cidr_block = var.subnet_cidr_block_newyork-public1a              
    availability_zone = var.avail_zone_newyork-public1a  
    provider    = aws.new-york      
    tags = {                                           
        Name: "${var.env_prefix_newyork}-subnet-1a"     
        Service: "Armageddon Phase 1"
        Owner = "MATTRESS AVENGERS"         
    }
}


resource "aws_subnet" "newyork-public-subnet-1b"{                
    vpc_id = aws_vpc.newyork-vpc.id                     
    cidr_block = var.subnet_cidr_block_newyork-public1b             
    availability_zone = var.avail_zone_newyork-public1b   
    provider    = aws.new-york     
    tags = {                                           
        Name: "${var.env_prefix_newyork}-subnet-1b" 
        Service: "Armageddon Phase 1"    
        Owner = "MATTRESS AVENGERS"         
    }
}



#Private Subnet New York


resource "aws_subnet" "newyork-private-subnet-1a"{                
    vpc_id = aws_vpc.newyork-vpc.id                     
    cidr_block = var.subnet_cidr_block_newyork-private1a              
    availability_zone = var.avail_zone_newyork-private1a        
    provider    = aws.new-york 
    tags = {                                           
        Name: "${var.env_prefix_newyork}-subnet-1a"  
        Service: "Armageddon Phase 1"   
        Owner = "MATTRESS AVENGERS"         
    }
}



resource "aws_subnet" "newyork-private-subnet-1b"{                
    vpc_id = aws_vpc.newyork-vpc.id                     
    cidr_block = var.subnet_cidr_block_newyork-private1b              
    availability_zone = var.avail_zone_newyork-private1b       
    provider    = aws.new-york 
    tags = {                                           
        Name: "${var.env_prefix_newyork}-subnet-1b"     
        Service: "Armageddon Phase 1"
        Owner = "MATTRESS AVENGERS"         
    }
}


////////////////////////////////////////////////////////////////////////////////////////////

#Public Subnet London

resource "aws_subnet" "london-public-subnet-2a"{                
    vpc_id = aws_vpc.london-vpc.id                     
    cidr_block = var.subnet_cidr_block_london-public2a              
    availability_zone = var.avail_zone_london-public2a     
    provider    = aws.london   
    tags = {                                           
        Name: "${var.env_prefix_london}-subnet-2a"     
        Service: "Armageddon Phase 1"
        Owner = "MATTRESS AVENGERS"         
    }
}


resource "aws_subnet" "london-public-subnet-2b"{                
    vpc_id = aws_vpc.london-vpc.id                     
    cidr_block = var.subnet_cidr_block_london-public2b             
    availability_zone = var.avail_zone_london-public2b   
    provider    = aws.london       
    tags = {                                           
        Name: "${var.env_prefix_newyork}-subnet-2b"     
        Service: "Armageddon Phase 1"
        Owner = "MATTRESS AVENGERS"         
    }
}


#Private Subnet London


resource "aws_subnet" "london-private-subnet-2a"{                
    vpc_id = aws_vpc.london-vpc.id                     
    cidr_block = var.subnet_cidr_block_london-private2a             
    availability_zone = var.avail_zone_london-private2a       
    provider    = aws.london   
    tags = {                                           
        Name: "${var.env_prefix_london}-subnet-2a"    
        Service: "Armageddon Phase 1" 
        Owner = "MATTRESS AVENGERS"         
    }
}



resource "aws_subnet" "london-private-subnet-2b"{                
    vpc_id = aws_vpc.london-vpc.id                     
    cidr_block = var.subnet_cidr_block_london-private2b              
    availability_zone = var.avail_zone_london-private2b       
    provider    = aws.london   
    tags = {                                           
        Name: "${var.env_prefix_london}-subnet-2b"  
        Service: "Armageddon Phase 1"   
        Owner = "MATTRESS AVENGERS"         
    }
}


//////////////////////////////////////////////////////////////////////////////////////////////

#Public Subnet Sao Paulo

resource "aws_subnet" "saopaulo-public-subnet-1a"{                
    vpc_id = aws_vpc.saopaulo-vpc.id                     
    cidr_block = var.subnet_cidr_block_saopaulo-public1a              
    availability_zone = var.avail_zone_saopaulo-public1a      
    provider    = aws.sao-paulo    
    tags = {                                           
        Name: "${var.env_prefix_saopaulo}-subnet-1a"     
        Service: "Armageddon Phase 1"
        Owner = "MATTRESS AVENGERS"         
    }
}


resource "aws_subnet" "saopaulo-public-subnet-1c"{                
    vpc_id = aws_vpc.saopaulo-vpc.id                     
    cidr_block = var.subnet_cidr_block_saopaulo-public1c             
    availability_zone = var.avail_zone_saopaulo-public1c  
    provider    = aws.sao-paulo      
    tags = {                                           
        Name: "${var.env_prefix_saopaulo}-subnet-1c"   
        Service: "Armageddon Phase 1"  
        Owner = "MATTRESS AVENGERS"         
    }
}



#Private Subnet Sau Paulo


resource "aws_subnet" "saopaulo-private-subnet-1a"{                
    vpc_id = aws_vpc.saopaulo-vpc.id                     
    cidr_block = var.subnet_cidr_block_saopaulo-private1a              
    availability_zone = var.avail_zone_saopaulo-private1a      
    provider    = aws.sao-paulo   
    tags = {                                           
        Name: "${var.env_prefix_saopaulo}-subnet-1a"     
        Service: "Armageddon Phase 1"
        Owner = "MATTRESS AVENGERS"         
    }
}



resource "aws_subnet" "saopaulo-private-subnet-1c"{                
    vpc_id = aws_vpc.saopaulo-vpc.id                     
    cidr_block = var.subnet_cidr_block_saopaulo-private1c             
    availability_zone = var.avail_zone_saopaulo-private1c      
    provider    = aws.sao-paulo  
    tags = {                                           
        Name: "${var.env_prefix_saopaulo}-subnet-1c"     
        Service: "Armageddon Phase 1"
        Owner = "MATTRESS AVENGERS"         
    }
}


//////////////////////////////////////////////////////////////////////////////////////////////////


#Public Subnet Australia

resource "aws_subnet" "australia-public-subnet-2a"{                
    vpc_id = aws_vpc.australia-vpc.id                     
    cidr_block = var.subnet_cidr_block_australia-public2a              
    availability_zone = var.avail_zone_australia-public2a   
    provider    = aws.australia   
    tags = {                                           
        Name: "${var.env_prefix_australia}-subnet-2a"   
        Service: "Armageddon Phase 1"  
        Owner = "MATTRESS AVENGERS"         
    }
}


resource "aws_subnet" "australia-public-subnet-2b"{                
    vpc_id = aws_vpc.australia-vpc.id                     
    cidr_block = var.subnet_cidr_block_australia-public2b             
    availability_zone = var.avail_zone_australia-public2b  
    provider    = aws.australia     
    tags = {                                           
        Name: "${var.env_prefix_australia}-subnet-2b" 
        Service: "Armageddon Phase 1"    
        Owner = "MATTRESS AVENGERS"         
    }
}



#Private Subnet Australia


resource "aws_subnet" "australia-private-subnet-2a"{                
    vpc_id = aws_vpc.australia-vpc.id                     
    cidr_block = var.subnet_cidr_block_australia-private2a              
    availability_zone = var.avail_zone_australia-private2a       
    provider    = aws.australia 
    tags = {                                           
        Name: "${var.env_prefix_australia}-subnet-2a"
        Service: "Armageddon Phase 1"     
        Owner = "MATTRESS AVENGERS"         
    }
}



resource "aws_subnet" "australia-private-subnet-2b"{                
    vpc_id = aws_vpc.australia-vpc.id                     
    cidr_block = var.subnet_cidr_block_australia-private2b              
    availability_zone = var.avail_zone_australia-private2b   
    provider    = aws.australia   
    tags = {                                           
        Name: "${var.env_prefix_australia}-subnet-2b"     
        Service: "Armageddon Phase 1"
        Owner = "MATTRESS AVENGERS"         
    }
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////


#Public Subnet Hong kong

resource "aws_subnet" "hongkong-public-subnet-1a"{                
    vpc_id = aws_vpc.hongkong-vpc.id                     
    cidr_block = var.subnet_cidr_block_hongkong-public1a              
    availability_zone = var.avail_zone_hongkong-public1a       
    provider    = aws.hong-kong
    tags = {                                           
        Name: "${var.env_prefix_hongkong}-subnet-1a"  
        Service: "Armageddon Phase 1"   
        Owner = "MATTRESS AVENGERS"         
    }
}


resource "aws_subnet" "hongkong-public-subnet-1b"{                
    vpc_id = aws_vpc.hongkong-vpc.id                     
    cidr_block = var.subnet_cidr_block_hongkong-public1b             
    availability_zone = var.avail_zone_hongkong-public1b    
    provider    = aws.hong-kong   
    tags = {                                           
        Name: "${var.env_prefix_hongkong}-subnet-1b"   
        Service: "Armageddon Phase 1"  
        Owner = "MATTRESS AVENGERS"         
    }
}



#Private Subnet Hong Kong


resource "aws_subnet" "hongkong-private-subnet-1a"{                
    vpc_id = aws_vpc.hongkong-vpc.id                     
    cidr_block = var.subnet_cidr_block_hongkong-private1a              
    availability_zone = var.avail_zone_hongkong-private1a        
    provider    = aws.hong-kong
    tags = {                                           
        Name: "${var.env_prefix_hongkong}-subnet-1a"     
        Service: "Armageddon Phase 1"
        Owner = "MATTRESS AVENGERS"         
    }
}



resource "aws_subnet" "hongkong-private-subnet-1b"{                
    vpc_id = aws_vpc.hongkong-vpc.id                     
    cidr_block = var.subnet_cidr_block_hongkong-private1b              
    availability_zone = var.avail_zone_hongkong-private1b      
    provider    = aws.hong-kong
    tags = {                                           
        Name: "${var.env_prefix_hongkong}-subnet-1b"     
        Service: "Armageddon Phase 1"
        Owner = "MATTRESS AVENGERS"         
    }
}


///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


#Public Subnet California

resource "aws_subnet" "california-public-subnet-1c"{                
    vpc_id = aws_vpc.california-vpc.id                     
    cidr_block = var.subnet_cidr_block_california-public1c              
    availability_zone = var.avail_zone_california-public1c      
    provider    = aws.california 
    tags = {                                           
        Name: "${var.env_prefix_california}-subnet-1c"     
        Service: "Armageddon Phase 1"
        Owner = "MATTRESS AVENGERS"         
    }
}


resource "aws_subnet" "california-public-subnet-1b"{                
    vpc_id = aws_vpc.california-vpc.id                     
    cidr_block = var.subnet_cidr_block_california-public1b             
    availability_zone = var.avail_zone_california-public1b 
    provider    = aws.california      
    tags = {                                           
        Name: "${var.env_prefix_california}-subnet-1b"     
        Service: "Armageddon Phase 1"
        Owner = "MATTRESS AVENGERS"         
    }
}



#Private Subnet California


resource "aws_subnet" "california-private-subnet-1c"{                
    vpc_id = aws_vpc.california-vpc.id                     
    cidr_block = var.subnet_cidr_block_california-private1c              
    availability_zone = var.avail_zone_california-private1c       
    provider    = aws.california 
    tags = {                                           
        Name: "${var.env_prefix_hongkong}-subnet-1c" 
        Service: "Armageddon Phase 1"    
        Owner = "MATTRESS AVENGERS"         
    }
}



resource "aws_subnet" "california-private-subnet-1b"{                
    vpc_id = aws_vpc.california-vpc.id                     
    cidr_block = var.subnet_cidr_block_california-private1b              
    availability_zone = var.avail_zone_california-private1b    
    provider    = aws.california  
    tags = {                                           
        Name: "${var.env_prefix_california}-subnet-1b"
        Service: "Armageddon Phase 1"     
        Owner = "MATTRESS AVENGERS"         
    }
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

#Public Subnet Tokyo Test

resource "aws_subnet" "tokyotest-public-subnet-1a"{                
    vpc_id = aws_vpc.tokyotest-vpc.id                     
    cidr_block = var.subnet_cidr_block_tokyotest-public1a              
    availability_zone = var.avail_zone_tokyotest-public1a   
    provider    = aws.tokyo-testb     
    tags = {                                           
        Name: "${var.env_prefix_tokyotest}-subnet-1a"  
        Service: "Armageddon Phase 1"   
        Owner = "MATTRESS AVENGERS"         
    }
}


#Private Subnet Tokyo Test

resource "aws_subnet" "tokyotest-private-subnet-1a"{                
    vpc_id = aws_vpc.tokyotest-vpc.id                     
    cidr_block = var.subnet_cidr_block_tokyotest-private1a              
    availability_zone = var.avail_zone_tokyotest-private1a  
    provider    = aws.tokyo-testb      
    tags = {                                           
        Name: "${var.env_prefix_tokyotest}-subnet-1a"  
        Service: "Armageddon Phase 1"   
        Owner = "MATTRESS AVENGERS"         
    }
}

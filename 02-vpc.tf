//////VPC RESOURCE////////////////////////////////////////

#Tokyo VPC

resource "aws_vpc" "tokyo-vpc" {                    
    cidr_block = var.vpc_cidr_block_tokyo
    provider = aws.tokyo                 
    tags = {                                        
        Name: "${var.env_prefix_tokyo}-vpc"                
    }
}

//////////////////////////////////////////////////////////


#Tokyo Test VPC

resource "aws_vpc" "tokyotest-vpc" {                    
    cidr_block = var.vpc_cidr_block_tokyotest
    provider = aws.tokyo-testb               
    tags = {                                        
        Name: "${var.env_prefix_tokyotest}-vpc"                
    }
}

//////////////////////////////////////////////////////////

#New York VPC

resource "aws_vpc" "newyork-vpc" {                    
    cidr_block = var.vpc_cidr_block_newyork                
    provider = aws.new-york
    tags = {                                        
        Name: "${var.env_prefix_newyork}-vpc"                
    }
}

/////////////////////////////////////////////////////////

#London VPC

resource "aws_vpc" "london-vpc" {                    
    cidr_block = var.vpc_cidr_block_london 
    provider = aws.london              
    tags = {                                        
        Name: "${var.env_prefix_london}-vpc"                
    }
}

/////////////////////////////////////////////////////////

#Sao Paulo VPC

resource "aws_vpc" "saopaulo-vpc" {                    
    cidr_block = var.vpc_cidr_block_saopaulo     
    provider = aws.sao-paulo        
    tags = {                                        
        Name: "${var.env_prefix_saopaulo}-vpc"                
    }
}

/////////////////////////////////////////////////////////

#Australia VPC

resource "aws_vpc" "australia-vpc" {                    
    cidr_block = var.vpc_cidr_block_australia        
    provider = aws.australia   
    tags = {                                        
        Name: "${var.env_prefix_australia}-vpc"                
    }
}

/////////////////////////////////////////////////////////


#Hong Kong VPC

resource "aws_vpc" "hongkong-vpc" {                    
    cidr_block = var.vpc_cidr_block_hongkong 
    provider = aws.hong-kong       
    tags = {                                        
        Name: "${var.env_prefix_hongkong}-vpc"                
    }
}

/////////////////////////////////////////////////////////

#California VPC

resource "aws_vpc" "california-vpc" {                    
    cidr_block = var.vpc_cidr_block_california   
    provider = aws.california       
    tags = {                                        
        Name: "${var.env_prefix_california}-vpc"                
    }
}

/////////////////////////////////////////////////////////
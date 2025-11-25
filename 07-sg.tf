//Security Groups for Tokyo VPC

 resource "aws_security_group" "tokyo-SG01-ASG01" {
   name        = "tokyo-SG01-ASG01"
   description = "tokyo-SG01-ASG01"
   vpc_id      = aws_vpc.tokyo-vpc.id

   provider = aws.tokyo

   ingress {
     description = ""
     from_port   = 80
     to_port     = 80
     protocol    = "tcp"
     cidr_blocks = ["0.0.0.0/0"]
   }

   egress {
     from_port   = 0
     to_port     = 0
     protocol    = "-1"
     cidr_blocks = ["0.0.0.0/0"]
   }

   tags = {
     Name    = "tokyo-SG01-ASG01"
     Service: "Armageddon Phase 1"
     Owner = "MATTRESS AVENGERS" 
   }

 }

resource "aws_security_group" "tokyo-SG02-LB01" {
   name        = "tokyo-SG02-LB01"
   description = "tokyo-SG02-LB01"
   vpc_id      = aws_vpc.tokyo-vpc.id

   provider = aws.tokyo

   ingress {
     description = ""
     from_port   = 80
     to_port     = 80
     protocol    = "tcp"
     cidr_blocks = ["0.0.0.0/0"]
   }

   egress {
     from_port   = 0
     to_port     = 0
     protocol    = "-1"
     cidr_blocks = ["0.0.0.0/0"]
   }

   tags = {
     Name    = "tokyo-SG02-LB01"
     Service: "Armageddon Phase 1"
     Owner = "MATTRESS AVENGERS" 
   }

 }

//Security Groups for New York VPC 
 resource "aws_security_group" "newyork-SG01-ASG01" {
   name        = "newyork-SG01-ASG01"
   description = "newyork-SG01-ASG01"
   vpc_id      = aws_vpc.newyork-vpc.id

   provider = aws.new-york


   ingress {
     description = ""
     from_port   = 80
     to_port     = 80
     protocol    = "tcp"
     cidr_blocks = ["0.0.0.0/0"]
   }

   egress {
     from_port   = 0
     to_port     = 0
     protocol    = "-1"
     cidr_blocks = ["0.0.0.0/0"]
   }

   tags = {
     Name    = "newyork-SG01-ASG01"
     Service: "Armageddon Phase 1"
     Owner = "MATTRESS AVENGERS" 
   }

 }

  resource "aws_security_group" "newyork-SG02-LB01" {
   name        = "newyork-SG02-LB01"
   description = "newyork-SG02-LB01"
   vpc_id      = aws_vpc.newyork-vpc.id

   provider = aws.new-york

   ingress {
     description = ""
     from_port   = 80
     to_port     = 80
     protocol    = "tcp"
     cidr_blocks = ["0.0.0.0/0"]
   }

   egress {
     from_port   = 0
     to_port     = 0
     protocol    = "-1"
     cidr_blocks = ["0.0.0.0/0"]
   }

   tags = {
     Name    = "newyork-SG02-LB01"
     Service: "Armageddon Phase 1"
     Owner = "MATTRESS AVENGERS" 
   }

 }

//Security Groups for London VPC
 resource "aws_security_group" "london-SG01-ASG01" {
   name        = "london-SG01-ASG01"
   description = "london-SG01-ASG01"
   vpc_id      = aws_vpc.london-vpc.id

   provider = aws.london

   ingress {
     description = ""
     from_port   = 80
     to_port     = 80
     protocol    = "tcp"
     cidr_blocks = ["0.0.0.0/0"]
   }

   egress {
     from_port   = 0
     to_port     = 0
     protocol    = "-1"
     cidr_blocks = ["0.0.0.0/0"]
   }

   tags = {
     Name    = "london-SG01-ASG01"
     Service: "Armageddon Phase 1"
     Owner = "MATTRESS AVENGERS" 
   }

 }

 resource "aws_security_group" "london-SG02-LB01" {
   name        = "london-SG02-LB01"
   description = "london-SG02-LB01"
   vpc_id      = aws_vpc.london-vpc.id

   provider = aws.london

   ingress {
     description = ""
     from_port   = 80
     to_port     = 80
     protocol    = "tcp"
     cidr_blocks = ["0.0.0.0/0"]
   }

   egress {
     from_port   = 0
     to_port     = 0
     protocol    = "-1"
     cidr_blocks = ["0.0.0.0/0"]
   }

   tags = {
     Name    = "london-SG02-LB01"
     Service: "Armageddon Phase 1"
     Owner = "MATTRESS AVENGERS" 
   }

 }


//Security Groups for Sao Paulo VPC

 resource "aws_security_group" "saopaulo-SG01-ASG01" {
   name        = "saopaulo-SG01-ASG01"
   description = "saopaulo-SG01-ASG01"
   vpc_id      = aws_vpc.saopaulo-vpc.id

   provider = aws.sao-paulo

   ingress {
     description = ""
     from_port   = 80
     to_port     = 80 
     protocol    = "tcp"
     cidr_blocks = ["0.0.0.0/0"]
   }

   egress {
     from_port   = 0
     to_port     = 0
     protocol    = "-1"
     cidr_blocks = ["0.0.0.0/0"]
   }

   tags = {
     Name    = "sao-paulo-SG01-ASG01"
     Service: "Armageddon Phase 1"
     Owner = "MATTRESS AVENGERS" 
   }

 }

 resource "aws_security_group" "saopaulo-SG02-LB01" {
   name        = "saopaulo-SG02-LB01"
   description = "saopaulo-SG02-LB01"
   vpc_id      = aws_vpc.saopaulo-vpc.id

   provider = aws.sao-paulo

   ingress {
     description = ""
     from_port   = 80
     to_port     = 80
     protocol    = "tcp"
     cidr_blocks = ["0.0.0.0/0"]
   }

   egress {
     from_port   = 0
     to_port     = 0
     protocol    = "-1"
     cidr_blocks = ["0.0.0.0/0"]
   }

   tags = {
     Name    = "sao-paulo-SG02-LB01"
     Service: "Armageddon Phase 1"
     Owner = "MATTRESS AVENGERS" 
   }

 }

//Security Groups for Australia VPC
 resource "aws_security_group" "australia-SG01-ASG01" {
   name        = "australia-SG01-ASG01"
   description = "australia-SG01-ASG01"
   vpc_id      = aws_vpc.australia-vpc.id

   provider = aws.australia


   ingress {
     description = ""
     from_port   = 80
     to_port     = 80
     protocol    = "tcp"
     cidr_blocks = ["0.0.0.0/0"]
   }

   egress {
     from_port   = 0
     to_port     = 0
     protocol    = "-1"
     cidr_blocks = ["0.0.0.0/0"]
   }

   tags = {
     Name    = "australia-SG01-ASG01"
     Service: "Armageddon Phase 1"
     Owner = "MATTRESS AVENGERS" 
   }

 }

 resource "aws_security_group" "australia-SG02-LB01" {
   name        = "australia-SG02-LB01"
   description = "australia-SG02-LB01"
   vpc_id      = aws_vpc.australia-vpc.id

   provider = aws.australia

   ingress {
     description = ""
     from_port   = 80
     to_port     = 80
     protocol    = "tcp"
     cidr_blocks = ["0.0.0.0/0"]
   }

   egress {
     from_port   = 0
     to_port     = 0
     protocol    = "-1"
     cidr_blocks = ["0.0.0.0/0"]
   }

   tags = {
     Name    = "australia-SG02-LB01"
     Service: "Armageddon Phase 1"
     Owner = "MATTRESS AVENGERS" 
   }

 }

//Security Groups for Hong Kong VPC
 resource "aws_security_group" "hongkong-SG01-ASG01" {
   name        = "hongkong-SG01-ASG01"
   description = "hongkong-SG01-ASG01"
   vpc_id      = aws_vpc.hongkong-vpc.id

   provider = aws.hong-kong

   ingress {
     description = ""
     from_port   = 80
     to_port     = 80
     protocol    = "tcp"
     cidr_blocks = ["0.0.0.0/0"]
   }

   egress {
     from_port   = 0
     to_port     = 0
     protocol    = "-1"
     cidr_blocks = ["0.0.0.0/0"]
   }

   tags = {
     Name    = "hongkong-SG01-ASG01"
     Service: "Armageddon Phase 1"
     Owner = "MATTRESS AVENGERS" 
   }

 }

 resource "aws_security_group" "hongkong-SG02-LB01" {
   name        = "hongkong-SG02-LB01"
   description = "hongkong-SG02-LB01"
   vpc_id      = aws_vpc.hongkong-vpc.id

   provider = aws.hong-kong

   ingress {
     description = ""
     from_port   = 80
     to_port     = 80
     protocol    = "tcp"
     cidr_blocks = ["0.0.0.0/0"]
   }

   egress {
     from_port   = 0
     to_port     = 0
     protocol    = "-1"
     cidr_blocks = ["0.0.0.0/0"]
   }

   tags = {
     Name    = "hongkong-SG02-LB01"
     Service: "Armageddon Phase 1"
     Owner = "MATTRESS AVENGERS" 
   }

 }


//Security Groups for California VPC

 resource "aws_security_group" "california-SG01-ASG01" {
   name        = "california-SG01-ASG01"
   description = "california-SG01-ASG01"
   vpc_id      = aws_vpc.california-vpc.id

   provider = aws.california

   ingress {
     description = ""
     from_port   = 80
     to_port     = 80
     protocol    = "tcp"
     cidr_blocks = ["0.0.0.0/0"]
   }

   egress {
     from_port   = 0
     to_port     = 0
     protocol    = "-1"
     cidr_blocks = ["0.0.0.0/0"]
   }

   tags = {
     Name    = "california-SG01-ASG01"
     Service: "Armageddon Phase 1"
     Owner = "MATTRESS AVENGERS" 
   }

 }

 resource "aws_security_group" "california-SG02-LB01" {
   name        = "california-SG02-LB01"
   description = "california-SG02-LB01"
   vpc_id      = aws_vpc.california-vpc.id

   provider = aws.california

   ingress {
     description = ""
     from_port   = 80
     to_port     = 80
     protocol    = "tcp"
     cidr_blocks = ["0.0.0.0/0"]
   }

   egress {
     from_port   = 0
     to_port     = 0
     protocol    = "-1"
     cidr_blocks = ["0.0.0.0/0"]
   }

   tags = {
     Name    = "california-SG02-LB01"
     Service: "Armageddon Phase 1"
     Owner = "MATTRESS AVENGERS" 
   }

 }


//Security Groups for Tokyo Test VPC


 resource "aws_security_group" "tokyotest-SG01-ASG01" {
   name        = "tokyo-test-SG01-ASG01"
   description = "tokyo-test-SG01-ASG01"
   vpc_id      = aws_vpc.tokyotest-vpc.id

   provider = aws.tokyo-testb


   ingress {
     description = ""
     from_port   = 80
     to_port     = 80
     protocol    = "tcp"
     cidr_blocks = ["0.0.0.0/0"]
   }

   egress {
     from_port   = 0
     to_port     = 0
     protocol    = "-1"
     cidr_blocks = ["0.0.0.0/0"]
   }

   tags = {
     Name    = "tokyotest-SG01-ASG01"
     Service: "Armageddon Phase 1"   
     Owner = "MATTRESS AVENGERS" 
   }

 }

 resource "aws_security_group" "tokyotest-SG02-LB01" {
   name        = "tokyo-test-SG02-LB01"
   description = "tokyo-test-SG02-LB01"
   vpc_id      = aws_vpc.tokyotest-vpc.id

   provider = aws.tokyo-testb

   ingress {
     description = ""
     from_port   = 80
     to_port     = 80
     protocol    = "tcp"
     cidr_blocks = ["0.0.0.0/0"]
   }

   egress {
     from_port   = 0
     to_port     = 0
     protocol    = "-1"
     cidr_blocks = ["0.0.0.0/0"]
   }

   tags = {
     Name    = "tokyotest-SG02-LB01"
     Service: "Armageddon Phase 1"   
     Owner = "MATTRESS AVENGERS" 
   }

 }
 
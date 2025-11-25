# # Target group for the Tokyo load balancer
 resource "aws_lb_target_group" "tokyo_tg" {
   name     = "tokyo-target-group"
   port     = 80
   protocol = "HTTP"
   vpc_id   = aws_vpc.tokyo-vpc.id
   target_type = "instance"
   provider = aws.tokyo

   health_check {
     enabled             = true
     interval            = 30
     path                = "/"
     protocol            = "HTTP"
     healthy_threshold   = 5
     unhealthy_threshold = 2
     timeout             = 5
     matcher             = "200"
   }

   tags = {
     Name    = "TokyoTargetGroup"
     Service: "Armageddon Phase 1"   
     Owner = "MATTRESS AVENGERS"  
     Project = "Web Service"
   }
 }

# # Target group for the New York load balancer
resource "aws_lb_target_group" "newyork_tg" {
   name     = "newyork-target-group"
   port     = 80
   protocol = "HTTP"
   vpc_id   = aws_vpc.newyork-vpc.id
   target_type = "instance"
   provider = aws.new-york

   health_check {
     enabled             = true
     interval            = 30
     path                = "/"
     protocol            = "HTTP"
     healthy_threshold   = 5
     unhealthy_threshold = 2
     timeout             = 5
     matcher             = "200"
   }

   tags = {
     Name    = "NewYorkTargetGroup"
     Service: "Armageddon Phase 1"   
     Owner = "MATTRESS AVENGERS"  
     Project = "Web Service"
   }
 }

# # Target group for the London load balancer
 resource "aws_lb_target_group" "london_tg" {
   name     = "london-target-group"
   port     = 80
   protocol = "HTTP"
   vpc_id   = aws_vpc.london-vpc.id
   target_type = "instance"
   provider = aws.london

   health_check {
     enabled             = true
     interval            = 30
     path                = "/"
     protocol            = "HTTP"
     healthy_threshold   = 5
     unhealthy_threshold = 2
     timeout             = 5
     matcher             = "200"
   }

   tags = {
     Name    = "LondonTargetGroup"
     Service: "Armageddon Phase 1"   
     Owner = "MATTRESS AVENGERS"  
     Project = "Web Service"
   }
 }

# # Target group for the Sao Paulo load balancer
 resource "aws_lb_target_group" "saopaulo_tg" {
   name     = "saopaulo-target-group"
   port     = 80
   protocol = "HTTP"
   vpc_id   = aws_vpc.saopaulo-vpc.id
   target_type = "instance"
   provider = aws.sao-paulo

   health_check {
     enabled             = true
     interval            = 30
     path                = "/"
     protocol            = "HTTP"
     healthy_threshold   = 5
     unhealthy_threshold = 2
     timeout             = 5
     matcher             = "200"
   }

   tags = {
     Name    = "SaoPauloTargetGroup"
     Service: "Armageddon Phase 1"   
     Owner = "MATTRESS AVENGERS"  
     Project = "Web Service"
   }
 }

# # Target group for the Australia load balancer
 resource "aws_lb_target_group" "australia_tg" {
   name     = "australia-target-group"
   port     = 80
   protocol = "HTTP"
   vpc_id   = aws_vpc.australia-vpc.id
   target_type = "instance"
   provider = aws.australia

   health_check {
     enabled             = true
     interval            = 30
     path                = "/"
     protocol            = "HTTP"
     healthy_threshold   = 5
     unhealthy_threshold = 2
     timeout             = 5
     matcher             = "200"
   }

   tags = {
     Name    = "AustraliaTargetGroup"
     Service: "Armageddon Phase 1"   
     Owner = "MATTRESS AVENGERS"  
     Project = "Web Service"
   }
 }

# # Target group for the Hong Kong load balancer
 resource "aws_lb_target_group" "hongkong_tg" {
   name     = "hongkong-target-group"
   port     = 80
   protocol = "HTTP"
   vpc_id   = aws_vpc.hongkong-vpc.id
   target_type = "instance"
   provider = aws.hong-kong

   health_check {
     enabled             = true
     interval            = 30
     path                = "/"
     protocol            = "HTTP"
     healthy_threshold   = 5
     unhealthy_threshold = 2
     timeout             = 5
     matcher             = "200"
   }

   tags = {
     Name    = "HongKongTargetGroup"
     Service: "Armageddon Phase 1"   
     Owner = "MATTRESS AVENGERS"  
     Project = "Web Service"
   }
 }

# # Target group for the California load balancer
 resource "aws_lb_target_group" "california_tg" {
   name     = "california-target-group"
   port     = 80
   protocol = "HTTP"
   vpc_id   = aws_vpc.california-vpc.id
   target_type = "instance"
   provider = aws.california

   health_check {
     enabled             = true
     interval            = 30
     path                = "/"
     protocol            = "HTTP"
     healthy_threshold   = 5
     unhealthy_threshold = 2
     timeout             = 5
     matcher             = "200"
   }

   tags = {
     Name    = "CaliforniaTargetGroup"
     Service: "Armageddon Phase 1"   
     Owner = "MATTRESS AVENGERS"  
     Project = "Web Service"
   }
 }

# # Target group for the Tokyo Test load balancer
 resource "aws_lb_target_group" "tokyotesta_tg" {
   name     = "tokyotesta-target-group"
   port     = 80
   protocol = "HTTP"
   vpc_id   = aws_vpc.tokyotest-vpc.id
   target_type = "instance"
   provider = aws.tokyo-testb

   health_check {
     enabled             = true
     interval            = 30
     path                = "/"
     protocol            = "HTTP"
     healthy_threshold   = 5
     unhealthy_threshold = 2
     timeout             = 5
     matcher             = "200"
   }

   tags = {
     Name    = "TokyoTestTargetGroup"
     Service: "Armageddon Phase 1"   
     Owner = "MATTRESS AVENGERS"  
     Project = "Web Service"
   }
 }

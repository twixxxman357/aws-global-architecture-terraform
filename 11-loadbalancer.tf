////////////////////////////////////////////////////////////////////////////

# # Load Balancer for Tokyo region
 resource "aws_lb" "tokyo_alb" {
   name               = "tokyo-load-balancer"
   internal           = false
   load_balancer_type = "application"
   security_groups    = [aws_security_group.tokyo-SG02-LB01.id]
   subnets            = [
     aws_subnet.tokyo-public-subnet-1a.id,
     aws_subnet.tokyo-public-subnet-1d.id,
   ]
   enable_deletion_protection = false
   provider = aws.tokyo
 #Lots of death and suffering here, make sure it's false

   tags = {
     Name    = "TokyoLoadBalancer"
     Service: "Armageddon Phase 1"   
     Owner = "MATTRESS AVENGERS"
     Project = "Web Service"
   }
 }

 resource "aws_lb_listener" "tokyo-http" {
   load_balancer_arn = aws_lb.tokyo_alb.arn
   port              = 80
   protocol          = "HTTP"
   provider = aws.tokyo

   default_action {
     type             = "forward"
     target_group_arn = aws_lb_target_group.tokyo_tg.arn
   }
 }


 output "tokyo-lb_dns_name" {
   value       = aws_lb.tokyo_alb.dns_name
   description = "The DNS name of the Tokyo Load Balancer."
 }

///////////////////////////////////////////////////////////////////////////

 # Load Balancer for New York region
 resource "aws_lb" "newyork_alb" {
   name               = "newyork-load-balancer"
   internal           = false
   load_balancer_type = "application"
   security_groups    = [aws_security_group.newyork-SG02-LB01.id]
   subnets            = [
     aws_subnet.newyork-public-subnet-1a.id,
     aws_subnet.newyork-public-subnet-1b.id,
   ]
   enable_deletion_protection = false
   provider = aws.new-york
 #Lots of death and suffering here, make sure it's false

   tags = {
     Name    = "NewYorkLoadBalancer"
     Service: "Armageddon Phase 1"   
     Owner = "MATTRESS AVENGERS"
     Project = "Web Service"
   }
 }

 resource "aws_lb_listener" "newyork-http" {
   load_balancer_arn = aws_lb.newyork_alb.arn
   port              = 80
   protocol          = "HTTP"
   provider = aws.new-york

   default_action {
     type             = "forward"
     target_group_arn = aws_lb_target_group.newyork_tg.arn
   }
 }


 output "newyork-lb_dns_name" {
   value       = aws_lb.newyork_alb.dns_name
   description = "The DNS name of the New York Load Balancer."
 }

 ///////////////////////////////////////////////////////////////////////////

 # Load Balancer for London region
 resource "aws_lb" "london_alb" {
   name               = "london-load-balancer"
   internal           = false
   load_balancer_type = "application"
   security_groups    = [aws_security_group.london-SG02-LB01.id]
   subnets            = [
     aws_subnet.london-public-subnet-2a.id,
     aws_subnet.london-public-subnet-2b.id,
   ]
   enable_deletion_protection = false
   provider = aws.london
 #Lots of death and suffering here, make sure it's false

   tags = {
     Name    = "LondonLoadBalancer"
     Service: "Armageddon Phase 1"   
     Owner = "MATTRESS AVENGERS"
     Project = "Web Service"
   }
 }

 resource "aws_lb_listener" "london-http" {
   load_balancer_arn = aws_lb.london_alb.arn
   port              = 80
   protocol          = "HTTP"
   provider = aws.london

   default_action {
     type             = "forward"
     target_group_arn = aws_lb_target_group.london_tg.arn
   }
 }
 output "london-lb_dns_name" {
   value       = aws_lb.london_alb.dns_name
   description = "The DNS name of the London Load Balancer."
 }

 //////////////////////////////////////////////////////////////////////////

# # Load Balancer for Sao Paulo region

 resource "aws_lb" "saopaulo_alb" {
   name               = "saopaulo-load-balancer"
   internal           = false
   load_balancer_type = "application"
   security_groups    = [aws_security_group.saopaulo-SG02-LB01.id]
   subnets            = [
     aws_subnet.saopaulo-public-subnet-1a.id,
     aws_subnet.saopaulo-public-subnet-1c.id,
   ]
   enable_deletion_protection = false
   provider = aws.sao-paulo
 #Lots of death and suffering here, make sure it's false

   tags = {
     Name    = "SaoPauloLoadBalancer"
     Service: "Armageddon Phase 1"   
     Owner = "MATTRESS AVENGERS"
     Project = "Web Service"
   }
 }

 resource "aws_lb_listener" "saopaulo-http" {
   load_balancer_arn = aws_lb.saopaulo_alb.arn
   port              = 80
   protocol          = "HTTP"
   provider = aws.sao-paulo

   default_action {
     type             = "forward"
     target_group_arn = aws_lb_target_group.saopaulo_tg.arn
   }
 }
 output "sao-paulo-lb_dns_name" {
   value       = aws_lb.saopaulo_alb.dns_name
   description = "The DNS name of the Sao Paulo Load Balancer."
 }

////////////////////////////////////////////////////////////////////////////

# # Load Balancer for Australia region

 resource "aws_lb" "australia_alb" {
   name               = "australia-load-balancer"
   internal           = false
   load_balancer_type = "application"
   security_groups    = [aws_security_group.australia-SG02-LB01.id]
   subnets            = [
     aws_subnet.australia-public-subnet-2a.id,
     aws_subnet.australia-public-subnet-2b.id,
   ]
   enable_deletion_protection = false
   provider = aws.australia
 #Lots of death and suffering here, make sure it's false

   tags = {
     Name    = "AustraliaLoadBalancer"
     Service: "Armageddon Phase 1"   
     Owner = "MATTRESS AVENGERS"
     Project = "Web Service"
   }
 }

 resource "aws_lb_listener" "australia-http" {
   load_balancer_arn = aws_lb.australia_alb.arn
   port              = 80
   protocol          = "HTTP"
   provider = aws.australia

   default_action {
     type             = "forward"
     target_group_arn = aws_lb_target_group.australia_tg.arn
   }
 }
 output "australia-lb_dns_name" {
   value       = aws_lb.australia_alb.dns_name
   description = "The DNS name of the Australia Load Balancer."
 }

////////////////////////////////////////////////////////////////////////////

# # Load Balancer for Hong Kong region

 resource "aws_lb" "hongkong_alb" {
   name               = "hongkong-load-balancer"
   internal           = false
   load_balancer_type = "application"
   security_groups    = [aws_security_group.hongkong-SG02-LB01.id]
   subnets            = [
     aws_subnet.hongkong-public-subnet-1a.id,
     aws_subnet.hongkong-public-subnet-1b.id,
   ]
   enable_deletion_protection = false
   provider = aws.hong-kong
# #Lots of death and suffering here, make sure it's false

   tags = {
     Name    = "HongKongLoadBalancer"
     Service: "Armageddon Phase 1"   
     Owner = "MATTRESS AVENGERS"
     Project = "Web Service"
   }
 }

 resource "aws_lb_listener" "hongkong-http" {
   load_balancer_arn = aws_lb.hongkong_alb.arn
   port              = 80
   protocol          = "HTTP"
   provider = aws.hong-kong

   default_action {
     type             = "forward"
     target_group_arn = aws_lb_target_group.hongkong_tg.arn
   }
 }
 output "hong-kong-lb_dns_name" {
   value       = aws_lb.hongkong_alb.dns_name
   description = "The DNS name of the Hong Kong Load Balancer."
 }

 ///////////////////////////////////////////////////////////////////////////

# # Load Balancer for California region

 resource "aws_lb" "california_alb" {
   name               = "california-load-balancer"
   internal           = false
   load_balancer_type = "application"
   security_groups    = [aws_security_group.california-SG02-LB01.id]
   subnets            = [
     aws_subnet.california-public-subnet-1c.id,
     aws_subnet.california-public-subnet-1b.id,
   ]
   enable_deletion_protection = false
   provider = aws.california
 #Lots of death and suffering here, make sure it's false

   tags = {
     Name    = "CaliforniaLoadBalancer"
     Service: "Armageddon Phase 1"   
     Owner = "MATTRESS AVENGERS"
     Project = "Web Service"
   }
 }

 resource "aws_lb_listener" "california-http" {
   load_balancer_arn = aws_lb.california_alb.arn
   port              = 80
   protocol          = "HTTP"
   provider = aws.california

   default_action {
     type             = "forward"
     target_group_arn = aws_lb_target_group.california_tg.arn
   }
 }
 output "california-lb_dns_name" {
   value       = aws_lb.california_alb.dns_name
   description = "The DNS name of the California Load Balancer."
 }

////////////////////////////////////////////////////////////////////////////

# # Load Balancer for Tokyo Test region

 /*resource "aws_lb" "tokyotest_alb" {
   name               = "tokyotest-load-balancer"
   internal           = false
   load_balancer_type = "application"
   security_groups    = [aws_security_group.tokyotest-SG02-LB01.id]
   subnets            = [
     aws_subnet.tokyotest-public-subnet-1a.id,
   ]
   enable_deletion_protection = false
   provider = aws.tokyo-testb
 #Lots of death and suffering here, make sure it's false

   tags = {
     Name    = "TokyoTestLoadBalancer"
     Service: "Armageddon Phase 1"   
     Owner = "MATTRESS AVENGERS"
     Project = "Web Service"
   }
 }

 resource "aws_lb_listener" "tokyotest-http" {
   load_balancer_arn = aws_lb.tokyotest_alb.arn
   port              = 80
   protocol          = "HTTP"
   provider = aws.tokyo-testb

   default_action {
     type             = "forward"
     target_group_arn = aws_lb_target_group.tokyotesta_tg.arn
   }
 }
 output "tokyo-test-lb_dns_name" {
   value       = aws_lb.tokyotest_alb.dns_name
   description = "The DNS name of the Tokyo Test Load Balancer."
 }
*/
 ///////////////////////////////////////////////////////////////////////////
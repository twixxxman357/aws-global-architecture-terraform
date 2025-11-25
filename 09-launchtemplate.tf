# # Create a Launch Template for the Tokyo EC2 instances
 resource "aws_launch_template" "tokyo-LT" {
   name_prefix   = "tokyo-LT"
   image_id      = data.aws_ami.tokyo-ami.id
   instance_type = var.instance_type
   provider = aws.tokyo


   

   key_name = "tokyo-key-pair"

   vpc_security_group_ids = [aws_security_group.tokyo-SG01-ASG01.id]

   user_data = base64encode(<<-EOF
     #!/bin/bash
     yum update -y
     yum install -y httpd
     systemctl start httpd
     systemctl enable httpd

     # Get the IMDSv2 token
     TOKEN=$(curl -X PUT "http://169.254.169.254/latest/api/token" -H "X-aws-ec2-metadata-token-ttl-seconds: 21600")

     # Background the curl requests
     curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/local-ipv4 &> /tmp/local_ipv4 &
     curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/placement/availability-zone &> /tmp/az &
     curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/network/interfaces/macs/ &> /tmp/macid &
     wait

     macid=$(cat /tmp/macid)
     local_ipv4=$(cat /tmp/local_ipv4)
     az=$(cat /tmp/az)
     vpc=$(curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/network/interfaces/macs/$macid/vpc-id)

     # Create HTML file
     cat <<-HTML > /var/www/html/index.html
     <!doctype html>
     <html lang="en" class="h-100">
     <head>
     <title>Casey Morris - Class 6</title>
     </head>
     <body>
     <div>
     <h1>Mattress Avengers Armageddon</h1>
     <h1>Chains Broken in Tokyo</h1>
     <p><b>Instance Name:</b> $(hostname -f) </p>
     <p><b>Instance Private Ip Address: </b> $local_ipv4</p>
     <p><b>Availability Zone: </b> $az</p>
     <p><b>Virtual Private Cloud (VPC):</b> $vpc</p>
     </div>
     </body>
     </html>
     HTML

     # Clean up the temp files
     rm -f /tmp/local_ipv4 /tmp/az /tmp/macid
   EOF
   )

   tag_specifications {
     resource_type = "instance"
     tags = {
       Name    = "tokyo-LT"
       Service: "Armageddon Phase 1"
       Owner = "MATTRESS AVENGERS" 
     }
   }

   lifecycle {
     create_before_destroy = true
   }
 }


# # Create a Launch Template for the New York EC2 instances
 resource "aws_launch_template" "newyork-LT" {
   name_prefix   = "newyork-LT"
   image_id      = data.aws_ami.newyork-ami.id  
   instance_type = var.instance_type
   provider = aws.new-york

   key_name = "newyork-key-pair"

   vpc_security_group_ids = [aws_security_group.newyork-SG01-ASG01.id]

   user_data = base64encode(<<-EOF
     #!/bin/bash
     yum update -y
     yum install -y httpd
     systemctl start httpd
     systemctl enable httpd

     # Get the IMDSv2 token
     TOKEN=$(curl -X PUT "http://169.254.169.254/latest/api/token" -H "X-aws-ec2-metadata-token-ttl-seconds: 21600")

     # Background the curl requests
     curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/local-ipv4 &> /tmp/local_ipv4 &
     curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/placement/availability-zone &> /tmp/az &
     curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/network/interfaces/macs/ &> /tmp/macid &
     wait

     macid=$(cat /tmp/macid)
     local_ipv4=$(cat /tmp/local_ipv4)
     az=$(cat /tmp/az)
     vpc=$(curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/network/interfaces/macs/$macid/vpc-id)

     # Create HTML file
     cat <<-HTML > /var/www/html/index.html
     <!doctype html>
     <html lang="en" class="h-100">
     <head>
     <title>Casey Morris - Class 6</title>
     </head>
     <body>
     <div>
     <h1>Mattress Avengers Armageddon</h1>
     <h1>Chains Broken in New York</h1>
     <p><b>Instance Name:</b> $(hostname -f) </p>
     <p><b>Instance Private Ip Address: </b> $local_ipv4</p>
     <p><b>Availability Zone: </b> $az</p>
     <p><b>Virtual Private Cloud (VPC):</b> $vpc</p>
     </div>
     </body>
     </html>
     HTML

     # Clean up the temp files
     rm -f /tmp/local_ipv4 /tmp/az /tmp/macid
   EOF
   )

   tag_specifications {
     resource_type = "instance"
     tags = {
       Name    = "newyork-LT"
       Service: "Armageddon Phase 1"
       Owner = "MATTRESS AVENGERS" 
     }
   }

   lifecycle {
     create_before_destroy = true
   }
 }

# # Create a Launch Template for the London EC2 instances
 resource "aws_launch_template" "london-LT" {
   name_prefix   = "london-LT"
   image_id      = data.aws_ami.london-ami.id  
   instance_type = var.instance_type
   provider = aws.london

   key_name = "london-key-pair"

   vpc_security_group_ids = [aws_security_group.london-SG01-ASG01.id]

   user_data = base64encode(<<-EOF
     #!/bin/bash
     yum update -y
     yum install -y httpd
     systemctl start httpd
     systemctl enable httpd

     # Get the IMDSv2 token
     TOKEN=$(curl -X PUT "http://169.254.169.254/latest/api/token" -H "X-aws-ec2-metadata-token-ttl-seconds: 21600")

     # Background the curl requests
     curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/local-ipv4 &> /tmp/local_ipv4 &
     curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/placement/availability-zone &> /tmp/az &
     curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/network/interfaces/macs/ &> /tmp/macid &
     wait

     macid=$(cat /tmp/macid)
     local_ipv4=$(cat /tmp/local_ipv4)
     az=$(cat /tmp/az)
     vpc=$(curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/network/interfaces/macs/$macid/vpc-id)

     # Create HTML file
     cat <<-HTML > /var/www/html/index.html
     <!doctype html>
     <html lang="en" class="h-100">
     <head>
     <title>Casey Morris - Class 6</title>
     </head>
     <body>
     <div>
     <h1>Mattress Avengers Armageddon</h1>
     <h1>Chains Broken in London</h1>
     <p><b>Instance Name:</b> $(hostname -f) </p>
     <p><b>Instance Private Ip Address: </b> $local_ipv4</p>
     <p><b>Availability Zone: </b> $az</p>
     <p><b>Virtual Private Cloud (VPC):</b> $vpc</p>
     </div>
     </body>
     </html>
     HTML

     # Clean up the temp files
     rm -f /tmp/local_ipv4 /tmp/az /tmp/macid
   EOF
   )

   tag_specifications {
     resource_type = "instance"
     tags = {
       Name    = "london-LT"
       Service: "Armageddon Phase 1"
       Owner = "MATTRESS AVENGERS" 
     }
   }

   lifecycle {
     create_before_destroy = true
   }
 }

# # Create a Launch Template for the Sao Paulo EC2 instances

 resource "aws_launch_template" "saopaulo-LT" {
   name_prefix   = "saopaulo-LT"
   image_id      = data.aws_ami.saopaulo-ami.id
   instance_type = var.instance_type1
   provider = aws.sao-paulo

   key_name = "saopaulo-key-pair"
   vpc_security_group_ids = [aws_security_group.saopaulo-SG01-ASG01.id]

   user_data = base64encode(<<-EOF
     #!/bin/bash
     yum update -y
     yum install -y httpd
     systemctl start httpd
     systemctl enable httpd

     # Get the IMDSv2 token
     TOKEN=$(curl -X PUT "http://169.254.169.254/latest/api/token" -H "X-aws-ec2-metadata-token-ttl-seconds: 21600")

     # Background the curl requests
     curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/local-ipv4 &> /tmp/local_ipv4 &
     curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/placement/availability-zone &> /tmp/az &
     curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/network/interfaces/macs/ &> /tmp/macid &
     wait

     macid=$(cat /tmp/macid)
     local_ipv4=$(cat /tmp/local_ipv4)
     az=$(cat /tmp/az)
     vpc=$(curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/network/interfaces/macs/$macid/vpc-id)

     # Create HTML file
     cat <<-HTML > /var/www/html/index.html
     <!doctype html>
     <html lang="en" class="h-100">
     <head>
     <title>Casey Morris - Class 6</title>
     </head>
     <body>
     <div>
     <h1>Mattress Avengers Armageddon</h1>
     <h1>Chains Broken in Sao Paulo</h1>
     <p><b>Instance Name:</b> $(hostname -f) </p>
     <p><b>Instance Private Ip Address: </b> $local_ipv4</p>
     <p><b>Availability Zone: </b> $az</p>
     <p><b>Virtual Private Cloud (VPC):</b> $vpc</p>
     </div>
     </body>
     </html>
     HTML

     # Clean up the temp files
     rm -f /tmp/local_ipv4 /tmp/az /tmp/macid
   EOF
   )

   tag_specifications {
     resource_type = "instance"
     tags = {
       Name    = "saopaulo-LT"
       Service: "Armageddon Phase 1"
       Owner = "MATTRESS AVENGERS" 
     }
   }

   lifecycle {
     create_before_destroy = true
   }
 }

# # Create a Launch Template for the Australia EC2 instances

 resource "aws_launch_template" "australia-LT" {
   name_prefix   = "australia-LT"
   image_id      = data.aws_ami.australia-ami.id  
   instance_type = var.instance_type
   provider = aws.australia

   key_name = "australia-key-pair"

   vpc_security_group_ids = [aws_security_group.australia-SG01-ASG01.id]

   user_data = base64encode(<<-EOF
     #!/bin/bash
     yum update -y
     yum install -y httpd
     systemctl start httpd
     systemctl enable httpd

     # Get the IMDSv2 token
     TOKEN=$(curl -X PUT "http://169.254.169.254/latest/api/token" -H "X-aws-ec2-metadata-token-ttl-seconds: 21600")

     # Background the curl requests
     curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/local-ipv4 &> /tmp/local_ipv4 &
     curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/placement/availability-zone &> /tmp/az &
     curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/network/interfaces/macs/ &> /tmp/macid &
     wait

     macid=$(cat /tmp/macid)
     local_ipv4=$(cat /tmp/local_ipv4)
     az=$(cat /tmp/az)
     vpc=$(curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/network/interfaces/macs/$macid/vpc-id)

     # Create HTML file
     cat <<-HTML > /var/www/html/index.html
     <!doctype html>
     <html lang="en" class="h-100">
     <head>
     <title>Casey Morris - Class 6</title>
     </head>
     <body>
     <div>
     <h1>Mattress Avengers Armageddon</h1>
     <h1>Chains Broken in Australia</h1>
     <p><b>Instance Name:</b> $(hostname -f) </p>
     <p><b>Instance Private Ip Address: </b> $local_ipv4</p>
     <p><b>Availability Zone: </b> $az</p>
     <p><b>Virtual Private Cloud (VPC):</b> $vpc</p>
     </div>
     </body>
     </html>
     HTML

     # Clean up the temp files
     rm -f /tmp/local_ipv4 /tmp/az /tmp/macid
   EOF
   )

   tag_specifications {
     resource_type = "instance"
     tags = {
       Name    = "australia-LT"
       Service: "Armageddon Phase 1"
       Owner = "MATTRESS AVENGERS" 
     }
   }

   lifecycle {
     create_before_destroy = true
   }
 }

# # Create a Launch Template for the Hong Kong EC2 instances

 resource "aws_launch_template" "hongkong-LT" {
   name_prefix   = "hongkong-LT"
   image_id      = data.aws_ami.hongkong-ami.id 
   instance_type = var.instance_type2
   provider = aws.hong-kong

   key_name = "hongkong-key-pair"

   vpc_security_group_ids = [aws_security_group.hongkong-SG01-ASG01.id]

   user_data = base64encode(<<-EOF
     #!/bin/bash
     yum update -y
     yum install -y httpd
     systemctl start httpd
     systemctl enable httpd

     # Get the IMDSv2 token
     TOKEN=$(curl -X PUT "http://169.254.169.254/latest/api/token" -H "X-aws-ec2-metadata-token-ttl-seconds: 21600")

     # Background the curl requests
     curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/local-ipv4 &> /tmp/local_ipv4 &
     curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/placement/availability-zone &> /tmp/az &
     curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/network/interfaces/macs/ &> /tmp/macid &
     wait

     macid=$(cat /tmp/macid)
     local_ipv4=$(cat /tmp/local_ipv4)
     az=$(cat /tmp/az)
     vpc=$(curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/network/interfaces/macs/$macid/vpc-id)

     # Create HTML file
     cat <<-HTML > /var/www/html/index.html
     <!doctype html>
     <html lang="en" class="h-100">
     <head>
     <title>Casey Morris - Class 6</title>
     </head>
     <body>
     <div>
     <h1>Mattress Avengers Armageddon</h1>
     <h1>Chains Broken in Hong Kong</h1>
     <p><b>Instance Name:</b> $(hostname -f) </p>
     <p><b>Instance Private Ip Address: </b> $local_ipv4</p>
     <p><b>Availability Zone: </b> $az</p>
     <p><b>Virtual Private Cloud (VPC):</b> $vpc</p>
     </div>
     </body>
     </html>
     HTML

     # Clean up the temp files
     rm -f /tmp/local_ipv4 /tmp/az /tmp/macid
   EOF
   )

   tag_specifications {
     resource_type = "instance"
     tags = {
       Name    = "hongkong-LT"
       Service: "Armageddon Phase 1"
       Owner = "MATTRESS AVENGERS" 
     }
   }

   lifecycle {
     create_before_destroy = true
   }
 }

# # Create a Launch Template for the California EC2 instances

 resource "aws_launch_template" "california-LT" {
   name_prefix   = "california-LT"
   image_id      = data.aws_ami.california-ami.id   
   instance_type = var.instance_type
   provider = aws.california

   key_name = "california-key-pair"

   vpc_security_group_ids = [aws_security_group.california-SG01-ASG01.id]

   user_data = base64encode(<<-EOF
     #!/bin/bash
     yum update -y
     yum install -y httpd
     systemctl start httpd
     systemctl enable httpd

     # Get the IMDSv2 token
     TOKEN=$(curl -X PUT "http://169.254.169.254/latest/api/token" -H "X-aws-ec2-metadata-token-ttl-seconds: 21600")

     # Background the curl requests
     curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/local-ipv4 &> /tmp/local_ipv4 &
     curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/placement/availability-zone &> /tmp/az &
     curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/network/interfaces/macs/ &> /tmp/macid &
     wait

     macid=$(cat /tmp/macid)
     local_ipv4=$(cat /tmp/local_ipv4)
     az=$(cat /tmp/az)
     vpc=$(curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/network/interfaces/macs/$macid/vpc-id)

     # Create HTML file
     cat <<-HTML > /var/www/html/index.html
     <!doctype html>
     <html lang="en" class="h-100">
     <head>
     <title>Casey Morris - Class 6</title>
     </head>
     <body>
     <div>
     <h1>Mattress Avengers Armageddon</h1>
     <h1>Chains Broken in California</h1>
     <p><b>Instance Name:</b> $(hostname -f) </p>
     <p><b>Instance Private Ip Address: </b> $local_ipv4</p>
     <p><b>Availability Zone: </b> $az</p>
     <p><b>Virtual Private Cloud (VPC):</b> $vpc</p>
     </div>
     </body>
     </html>
     HTML

     # Clean up the temp files
     rm -f /tmp/local_ipv4 /tmp/az /tmp/macid
   EOF
   )

   tag_specifications {
     resource_type = "instance"
     tags = {
       Name    = "california-LT"
       Service: "Armageddon Phase 1"
       Owner = "MATTRESS AVENGERS" 
     }
   }

   lifecycle {
     create_before_destroy = true
   }
 }

# # Create a Launch Template for the Tokyo Test EC2 instances
# resource "aws_launch_template" "tokyo-test_LT" {
#   name_prefix   = "tokyo-test_LT"
#   image_id      = "ami-023ff3d4ab11b2525"  
#   instance_type = var.instance_type

#   key_name = "Tokyo-Test-MyLinuxBox"

#   vpc_security_group_ids = [aws_security_group.tokyo-test-SG01-ASG01.id]

#   user_data = base64encode(<<-EOF
#     #!/bin/bash
#     yum update -y
#     yum install -y httpd
#     systemctl start httpd
#     systemctl enable httpd

#     # Get the IMDSv2 token
#     TOKEN=$(curl -X PUT "http://169.254.169.254/latest/api/token" -H "X-aws-ec2-metadata-token-ttl-seconds: 21600")

#     # Background the curl requests
#     curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/local-ipv4 &> /tmp/local_ipv4 &
#     curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/placement/availability-zone &> /tmp/az &
#     curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/network/interfaces/macs/ &> /tmp/macid &
#     wait

#     macid=$(cat /tmp/macid)
#     local_ipv4=$(cat /tmp/local_ipv4)
#     az=$(cat /tmp/az)
#     vpc=$(curl -H "X-aws-ec2-metadata-token: $TOKEN" -s http://169.254.169.254/latest/meta-data/network/interfaces/macs/$macid/vpc-id)

#     # Create HTML file
#     cat <<-HTML > /var/www/html/index.html
#     <!doctype html>
#     <html lang="en" class="h-100">
#     <head>
#     <title>Casey Morris - Class 6</title>
#     </head>
#     <body>
#     <div>
#     <h1>Armageddon</h1>
#     <h1>Chains Broken in Tokyo Test</h1>
#     <p><b>Instance Name:</b> $(hostname -f) </p>
#     <p><b>Instance Private Ip Address: </b> $local_ipv4</p>
#     <p><b>Availability Zone: </b> $az</p>
#     <p><b>Virtual Private Cloud (VPC):</b> $vpc</p>
#     </div>
#     </body>
#     </html>
#     HTML

#     # Clean up the temp files
#     rm -f /tmp/local_ipv4 /tmp/az /tmp/macid
#   EOF
#   )

#   tag_specifications {
#     resource_type = "instance"
#     tags = {
#       Name    = "tokyo-test_LT"
#       Service = "armageddon"
#       Owner   = "camorri"
#     }
#   }

#   lifecycle {
#     create_before_destroy = true
#   }
# }

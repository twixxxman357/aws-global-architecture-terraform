# # Create ASG For the Tokyo VPC

 resource "aws_autoscaling_group" "tokyo-asg" {
   name_prefix           = "tokyo-auto-scaling-group-"
   min_size              = 1
   max_size              = 3
   desired_capacity      = 1
   vpc_zone_identifier   = [
     aws_subnet.tokyo-private-subnet-1a.id,
     aws_subnet.tokyo-private-subnet-1d.id,
   ]
   health_check_type          = "ELB"
   health_check_grace_period  = 300
   force_delete               = true
   target_group_arns          = [aws_lb_target_group.tokyo_tg.arn]
   provider = aws.tokyo

   launch_template {
     id      = aws_launch_template.tokyo-LT.id
     version = "$Latest"
   }

   enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]

#   # Instance protection for launching
   initial_lifecycle_hook {
     name                  = "instance-protection-launch"
     lifecycle_transition  = "autoscaling:EC2_INSTANCE_LAUNCHING"
     default_result        = "CONTINUE"
     heartbeat_timeout     = 60
     notification_metadata = "{\"key\":\"value\"}"
   }

   # Instance protection for terminating
   initial_lifecycle_hook {
     name                  = "scale-in-protection"
     lifecycle_transition  = "autoscaling:EC2_INSTANCE_TERMINATING"
     default_result        = "CONTINUE"
     heartbeat_timeout     = 300
   }

   tag {
     key                 = "Name"
     value               = "tokyo-instance"
     propagate_at_launch = true
   }

   tag {
     key                 = "Environment"
     value               = "Production"
     propagate_at_launch = true
   }
 }


# # Auto Scaling Policy
 resource "aws_autoscaling_policy" "tokyo-scaling_policy" {
   name                   = "tokyo-cpu-target"
   autoscaling_group_name = aws_autoscaling_group.tokyo-asg.name

   policy_type = "TargetTrackingScaling"
   estimated_instance_warmup = 120
   provider = aws.tokyo
   target_tracking_configuration {
     predefined_metric_specification {
       predefined_metric_type = "ASGAverageCPUUtilization"
     }
     target_value = 75.0
   }
 }

# # Enabling instance scale-in protection
 resource "aws_autoscaling_attachment" "tokyo-asg_attachment" {
   autoscaling_group_name = aws_autoscaling_group.tokyo-asg.name
   lb_target_group_arn    = aws_lb_target_group.tokyo_tg.arn
   provider = aws.tokyo
 }


///////////////////////////////////////////////////////////////////////////

# # Create ASG For the New York VPC
 resource "aws_autoscaling_group" "newyork-asg" {
   name_prefix           = "newyork-auto-scaling-group-"
   min_size              = 1
   max_size              = 3
   desired_capacity      = 1
   vpc_zone_identifier   = [
     aws_subnet.newyork-private-subnet-1a.id,
     aws_subnet.newyork-private-subnet-1b.id,
   ]
   health_check_type          = "ELB"
   health_check_grace_period  = 300
   force_delete               = true
   target_group_arns          = [aws_lb_target_group.newyork_tg.arn]
   provider = aws.new-york
   launch_template {
     id      = aws_launch_template.newyork-LT.id
     version = "$Latest"
   }

   enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]

#   # Instance protection for launching
   initial_lifecycle_hook {
     name                  = "instance-protection-launch"
     lifecycle_transition  = "autoscaling:EC2_INSTANCE_LAUNCHING"
     default_result        = "CONTINUE"
     heartbeat_timeout     = 60
     notification_metadata = "{\"key\":\"value\"}"
   }

#   # Instance protection for terminating
   initial_lifecycle_hook {
     name                  = "scale-in-protection"
     lifecycle_transition  = "autoscaling:EC2_INSTANCE_TERMINATING"
     default_result        = "CONTINUE"
     heartbeat_timeout     = 300
   }

   tag {
     key                 = "Name"
     value               = "newyork-instance"
     propagate_at_launch = true
   }

   tag {
     key                 = "Environment"
     value               = "Production"
     propagate_at_launch = true
   }
 }


# # Auto Scaling Policy
 resource "aws_autoscaling_policy" "newyork_scaling_policy" {
   name                   = "newyork-cpu-target"
   autoscaling_group_name = aws_autoscaling_group.newyork-asg.name

   policy_type = "TargetTrackingScaling"
   estimated_instance_warmup = 120
   provider = aws.new-york
   target_tracking_configuration {
     predefined_metric_specification {
       predefined_metric_type = "ASGAverageCPUUtilization"
     }
     target_value = 75.0
   }
 }

# # Enabling instance scale-in protection
 resource "aws_autoscaling_attachment" "newyork_asg_attachment" {
   autoscaling_group_name = aws_autoscaling_group.newyork-asg.name
   lb_target_group_arn    = aws_lb_target_group.newyork_tg.arn
   provider = aws.new-york
 }

////////////////////////////////////////////////////////////////////////////

# # Create ASG For the London VPC
 resource "aws_autoscaling_group" "london-asg" {
   name_prefix           = "london-auto-scaling-group-"
   min_size              = 1
   max_size              = 3
   desired_capacity      = 1
   vpc_zone_identifier   = [
     aws_subnet.london-private-subnet-2a.id,
     aws_subnet.london-private-subnet-2b.id,
   ]
   health_check_type          = "ELB"
   health_check_grace_period  = 300
   force_delete               = true
   target_group_arns          = [aws_lb_target_group.london_tg.arn]
   provider = aws.london

   launch_template {
     id      = aws_launch_template.london-LT.id
     version = "$Latest"
   }

   enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]

#   # Instance protection for launching
   initial_lifecycle_hook {
     name                  = "instance-protection-launch"
     lifecycle_transition  = "autoscaling:EC2_INSTANCE_LAUNCHING"
     default_result        = "CONTINUE"
     heartbeat_timeout     = 60
     notification_metadata = "{\"key\":\"value\"}"
   }

   # Instance protection for terminating
   initial_lifecycle_hook {
     name                  = "scale-in-protection"
     lifecycle_transition  = "autoscaling:EC2_INSTANCE_TERMINATING"
     default_result        = "CONTINUE"
     heartbeat_timeout     = 300
   }

   tag {
     key                 = "Name"
     value               = "london-instance"
     propagate_at_launch = true
   }

   tag {
     key                 = "Environment"
     value               = "Production"
     propagate_at_launch = true
   }
 }


 # Auto Scaling Policy
 resource "aws_autoscaling_policy" "london-scaling_policy" {
   name                   = "london-cpu-target"
   autoscaling_group_name = aws_autoscaling_group.london-asg.name

   policy_type = "TargetTrackingScaling"
   estimated_instance_warmup = 120
   provider = aws.london
   target_tracking_configuration {
     predefined_metric_specification {
       predefined_metric_type = "ASGAverageCPUUtilization"
     }
     target_value = 75.0
   }
 }

# # Enabling instance scale-in protection
 resource "aws_autoscaling_attachment" "london-asg_attachment" {
   autoscaling_group_name = aws_autoscaling_group.london-asg.name
   lb_target_group_arn    = aws_lb_target_group.london_tg.arn
   provider = aws.london
 }

/////////////////////////////////////////////////////////////////////

# # Create ASG For the Sao Paulo VPC

 resource "aws_autoscaling_group" "saopaulo-asg" {
   name_prefix           = "saopaulo-auto-scaling-group-"
   min_size              = 1
   max_size              = 3
   desired_capacity      = 1
   vpc_zone_identifier   = [
     aws_subnet.saopaulo-private-subnet-1a.id,
     aws_subnet.saopaulo-private-subnet-1c.id,
   ]
   health_check_type          = "ELB"
   health_check_grace_period  = 300
   force_delete               = true
   target_group_arns          = [aws_lb_target_group.saopaulo_tg.arn]
   provider = aws.sao-paulo

   launch_template {
     id      = aws_launch_template.saopaulo-LT.id
     version = "$Latest"
   }

   enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]

#   # Instance protection for launching

   initial_lifecycle_hook {
     name                  = "instance-protection-launch"
     lifecycle_transition  = "autoscaling:EC2_INSTANCE_LAUNCHING"
     default_result        = "CONTINUE"
     heartbeat_timeout     = 60
     notification_metadata = "{\"key\":\"value\"}"
   }

#   # Instance protection for terminating
   initial_lifecycle_hook {
     name                  = "scale-in-protection"
     lifecycle_transition  = "autoscaling:EC2_INSTANCE_TERMINATING"
     default_result        = "CONTINUE"
     heartbeat_timeout     = 300
   }

   tag {
     key                 = "Name"
     value               = "saopaulo-instance"
     propagate_at_launch = true
   }

   tag {
     key                 = "Environment"
     value               = "Production"
     propagate_at_launch = true
   }
 }


# # Auto Scaling Policy
 resource "aws_autoscaling_policy" "saopaulo-scaling_policy" {
   name                   = "saopaulo-cpu-target"
   autoscaling_group_name = aws_autoscaling_group.saopaulo-asg.name

   policy_type = "TargetTrackingScaling"
   estimated_instance_warmup = 120
   provider = aws.sao-paulo
   target_tracking_configuration {
     predefined_metric_specification {
       predefined_metric_type = "ASGAverageCPUUtilization"
     }
     target_value = 75.0
   }
 }

# # Enabling instance scale-in protection
 resource "aws_autoscaling_attachment" "saopaulo-asg_attachment" {
   autoscaling_group_name = aws_autoscaling_group.saopaulo-asg.name
   lb_target_group_arn    = aws_lb_target_group.saopaulo_tg.arn
   provider = aws.sao-paulo
 }

///////////////////////////////////////////////////////////////////////

# # Create ASG For the Australia VPC

  resource "aws_autoscaling_group" "australia-asg" {
   name_prefix           = "australia-auto-scaling-group-"
   min_size              = 1
   max_size              = 3
   desired_capacity      = 1
   vpc_zone_identifier   = [
     aws_subnet.australia-private-subnet-2a.id,
     aws_subnet.australia-private-subnet-2b.id,
   ]
   health_check_type          = "ELB"
   health_check_grace_period  = 300
   force_delete               = true
   target_group_arns          = [aws_lb_target_group.australia_tg.arn]
   provider = aws.australia

   launch_template {
     id      = aws_launch_template.australia-LT.id
     version = "$Latest"
   }

   enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]

#   # Instance protection for launching
   initial_lifecycle_hook {
     name                  = "instance-protection-launch"
     lifecycle_transition  = "autoscaling:EC2_INSTANCE_LAUNCHING"
     default_result        = "CONTINUE"
     heartbeat_timeout     = 60
     notification_metadata = "{\"key\":\"value\"}"
   }

#   # Instance protection for terminating
   initial_lifecycle_hook {
     name                  = "scale-in-protection"
     lifecycle_transition  = "autoscaling:EC2_INSTANCE_TERMINATING"
     default_result        = "CONTINUE"
     heartbeat_timeout     = 300
   }

   tag {
     key                 = "Name"
     value               = "australia-instance"
     propagate_at_launch = true
   }

   tag {
     key                 = "Environment"
     value               = "Production"
     propagate_at_launch = true
   }
 }


# # Auto Scaling Policy
 resource "aws_autoscaling_policy" "australia-scaling_policy" {
   name                   = "australia-cpu-target"
   autoscaling_group_name = aws_autoscaling_group.australia-asg.name

   policy_type = "TargetTrackingScaling"
   estimated_instance_warmup = 120
   provider = aws.australia
   target_tracking_configuration {
     predefined_metric_specification {
       predefined_metric_type = "ASGAverageCPUUtilization"
     }
     target_value = 75.0
   }
 }

# # Enabling instance scale-in protection
 resource "aws_autoscaling_attachment" "australia-asg_attachment" {
   autoscaling_group_name = aws_autoscaling_group.australia-asg.name
   lb_target_group_arn    = aws_lb_target_group.australia_tg.arn
   provider = aws.australia
 }


///////////////////////////////////////////////////////////////////////

# # Create ASG For the Hong Kong VPC

 resource "aws_autoscaling_group" "hongkong-asg" {
   name_prefix           = "hongkong-auto-scaling-group-"
   min_size              = 3
   max_size              = 6
   desired_capacity      = 3
   vpc_zone_identifier   = [
     aws_subnet.hongkong-private-subnet-1a.id,
     aws_subnet.hongkong-private-subnet-1b.id,
   ]
   health_check_type          = "ELB"
   health_check_grace_period  = 300
   force_delete               = true
   target_group_arns          = [aws_lb_target_group.hongkong_tg.arn]
   provider = aws.hong-kong

   launch_template {
     id      = aws_launch_template.hongkong-LT.id
     version = "$Latest"
   }

   enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]

#   # Instance protection for launching
   initial_lifecycle_hook {
     name                  = "instance-protection-launch"
     lifecycle_transition  = "autoscaling:EC2_INSTANCE_LAUNCHING"
     default_result        = "CONTINUE"
     heartbeat_timeout     = 60
     notification_metadata = "{\"key\":\"value\"}"
   }

#   # Instance protection for terminating
   initial_lifecycle_hook {
     name                  = "scale-in-protection"
     lifecycle_transition  = "autoscaling:EC2_INSTANCE_TERMINATING"
     default_result        = "CONTINUE"
     heartbeat_timeout     = 300
   }

   tag {
     key                 = "Name"
     value               = "hongkong-instance"
     propagate_at_launch = true
   }

   tag {
     key                 = "Environment"
     value               = "Production"
     propagate_at_launch = true
   }
 }


# # Auto Scaling Policy
 resource "aws_autoscaling_policy" "hong-kong_scaling_policy" {
   name                   = "hongkong-cpu-target"
   autoscaling_group_name = aws_autoscaling_group.hongkong-asg.name

   policy_type = "TargetTrackingScaling"
   estimated_instance_warmup = 120
   provider = aws.hong-kong
   target_tracking_configuration {
     predefined_metric_specification {
       predefined_metric_type = "ASGAverageCPUUtilization"
     }
     target_value = 75.0
   }
 }

# # Enabling instance scale-in protection
 resource "aws_autoscaling_attachment" "hongkong-asg_attachment" {
   autoscaling_group_name = aws_autoscaling_group.hongkong-asg.name
   lb_target_group_arn    = aws_lb_target_group.hongkong_tg.arn
   provider = aws.hong-kong
 }

///////////////////////////////////////////////////////////////////////

# # Create ASG For the California VPC
 resource "aws_autoscaling_group" "california-asg" {
   name_prefix           = "california-auto-scaling-group-"
   min_size              = 1
   max_size              = 3
   desired_capacity      = 1
   vpc_zone_identifier   = [
     aws_subnet.california-private-subnet-1c.id,
     aws_subnet.california-private-subnet-1b.id,
   ]
   health_check_type          = "ELB"
   health_check_grace_period  = 300
   force_delete               = true
   target_group_arns          = [aws_lb_target_group.california_tg.arn]
   provider = aws.california

   launch_template {
     id      = aws_launch_template.california-LT.id
     version = "$Latest"
   }

   enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]

#   # Instance protection for launching
   initial_lifecycle_hook {
     name                  = "instance-protection-launch"
     lifecycle_transition  = "autoscaling:EC2_INSTANCE_LAUNCHING"
     default_result        = "CONTINUE"
     heartbeat_timeout     = 60
     notification_metadata = "{\"key\":\"value\"}"
   }

#   # Instance protection for terminating
   initial_lifecycle_hook {
     name                  = "scale-in-protection"
     lifecycle_transition  = "autoscaling:EC2_INSTANCE_TERMINATING"
     default_result        = "CONTINUE"
     heartbeat_timeout     = 300
   }

   tag {
     key                 = "Name"
     value               = "california-instance"
     propagate_at_launch = true
   }

   tag {
     key                 = "Environment"
     value               = "Production"
     propagate_at_launch = true
   }
 }


# # Auto Scaling Policy
 resource "aws_autoscaling_policy" "california-scaling_policy" {
   name                   = "california-cpu-target"
   autoscaling_group_name = aws_autoscaling_group.california-asg.name

   policy_type = "TargetTrackingScaling"
   estimated_instance_warmup = 120
   provider = aws.california
   target_tracking_configuration {
     predefined_metric_specification {
       predefined_metric_type = "ASGAverageCPUUtilization"
     }
     target_value = 75.0
   }
 }

# # Enabling instance scale-in protection
 resource "aws_autoscaling_attachment" "california-asg_attachment" {
   autoscaling_group_name = aws_autoscaling_group.california-asg.name
   lb_target_group_arn    = aws_lb_target_group.california_tg.arn
   provider = aws.california
 }

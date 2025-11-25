////////////////////////////////////////////////////////////////////////////////////////

//Create Key Pair for Tokyo VPC

data "aws_ami" "tokyo-ami" {
  provider    = aws.tokyo
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023.*-x86_64"]
  }
}

resource "aws_key_pair" "tokyo-key-pair" {
  provider   = aws.tokyo
  key_name   = "tokyo-key-pair"
  public_key = file(var.public_key_location)
}

////////////////////////////////////////////////////////////////////////////////////////

//Create Key Pair for New York VPC

data "aws_ami" "newyork-ami" {
  provider    = aws.new-york
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023.*-x86_64"]
  }
}

resource "aws_key_pair" "newyork-key-pair" {
  provider   = aws.new-york
  key_name   = "newyork-key-pair"
  public_key = file(var.public_key_location)
}


////////////////////////////////////////////////////////////////////////////////////////

//Create Key Pair for London VPC

data "aws_ami" "london-ami" {
  provider    = aws.london
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023.*-x86_64"]
  }
}

resource "aws_key_pair" "london-key-pair" {
  provider   = aws.london
  key_name   = "london-key-pair"
  public_key = file(var.public_key_location)
}

////////////////////////////////////////////////////////////////////////////////////////

//Create Key Pair for Sao Paulo VPC

data "aws_ami" "saopaulo-ami" {
  provider    = aws.sao-paulo
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023.*-x86_64"]
  }
}

resource "aws_key_pair" "saopaulo-key-pair" {
  provider   = aws.sao-paulo
  key_name   = "saopaulo-key-pair"
  public_key = file(var.public_key_location)
}

//////////////////////////////////////////////////////////////////////////////////////////

//Create Key Pair for Australia VPC

data "aws_ami" "australia-ami" {
  provider    = aws.australia
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023.*-x86_64"]
  }
}

//Generate rsa key pair on your system
//ssh-keygen -t rsa -b 4096 -f ~/.ssh/aws.pem

resource "aws_key_pair" "australia-key-pair" {
  provider = aws.australia
  key_name = "australia-key-pair"


//file reference the location of the public key

  public_key = file(var.public_key_location)
}

//////////////////////////////////////////////////////////////////////////////////////////////

//Create Key Pair for Hong Kong VPC


data "aws_ami" "hongkong-ami" {
  provider    = aws.hong-kong
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023.*-x86_64"]
  }
}

resource "aws_key_pair" "hongkong-key-pair" {
  provider   = aws.hong-kong
  key_name   = "hongkong-key-pair"
  public_key = file(var.public_key_location)
}

//////////////////////////////////////////////////////////////////////////////////////////////

//Create Key Pair for California VPC


data "aws_ami" "california-ami" {
  provider    = aws.california
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023.*-x86_64"]
  }
}

resource "aws_key_pair" "california-key-pair" {
  provider = aws.california
  key_name = "california-key-pair"
  # file reference the location of the public key
  public_key = file(var.public_key_location)
}

//////////////////////////////////////////////////////////////////////////////////////////////


















# # Create Key Pair for Tokyo VPC


# output "tokyo_private_key" {
#   value     = tls_private_key.Tokyo-MyLinuxBox.private_key_pem
#   sensitive = true
# }

# output "tokyo_public_key" {
#   value = data.tls_public_key.Tokyo-MyLinuxBox.public_key_openssh
# }

# # Create Key Pair for New York VPC
# resource "tls_private_key" "New-York-MyLinuxBox" {
#   algorithm = "RSA"
#   rsa_bits  = 2048
# }

# data "tls_public_key" "New-York-MyLinuxBox" {
#   private_key_pem = tls_private_key.New-York-MyLinuxBox.private_key_pem
# }

# output "new-york_private_key" {
#   value     = tls_private_key.New-York-MyLinuxBox.private_key_pem
#   sensitive = true
# }

# output "new-york_public_key" {
#   value = data.tls_public_key.New-York-MyLinuxBox.public_key_openssh
# }

# # Create Key Pair for London VPC
# resource "tls_private_key" "London-MyLinuxBox" {
#   algorithm = "RSA"
#   rsa_bits  = 2048
# }

# data "tls_public_key" "London-MyLinuxBox" {
#   private_key_pem = tls_private_key.London-MyLinuxBox.private_key_pem
# }

# output "london_private_key" {
#   value     = tls_private_key.London-MyLinuxBox.private_key_pem
#   sensitive = true
# }

# output "london_public_key" {
#   value = data.tls_public_key.London-MyLinuxBox.public_key_openssh
# }

# # Create Key Pair for Sao Paulo VPC
# resource "tls_private_key" "Sao-Paulo-MyLinuxBox" {
#   algorithm = "RSA"
#   rsa_bits  = 2048
# }

# data "tls_public_key" "Sao-Paulo-MyLinuxBox" {
#   private_key_pem = tls_private_key.Sao-Paulo-MyLinuxBox.private_key_pem
# }

# output "sao-paulo_private_key" {
#   value     = tls_private_key.Sao-Paulo-MyLinuxBox.private_key_pem
#   sensitive = true
# }

# output "sao-paulo_public_key" {
#   value = data.tls_public_key.Sao-Paulo-MyLinuxBox.public_key_openssh
# }

# # Create Key Pair for Australia VPC
# resource "tls_private_key" "Australia-MyLinuxBox" {
#   algorithm = "RSA"
#   rsa_bits  = 2048
# }

# data "tls_public_key" "Australia-MyLinuxBox" {
#   private_key_pem = tls_private_key.Australia-MyLinuxBox.private_key_pem
# }

# output "australia_private_key" {
#   value     = tls_private_key.Australia-MyLinuxBox.private_key_pem
#   sensitive = true
# }

# output "australia_public_key" {
#   value = data.tls_public_key.Australia-MyLinuxBox.public_key_openssh
# }

# # Create Key Pair for Hong Kong VPC
# resource "tls_private_key" "Hong-Kong-MyLinuxBox" {
#   algorithm = "RSA"
#   rsa_bits  = 2048
# }

# data "tls_public_key" "Hong-Kong-MyLinuxBox" {
#   private_key_pem = tls_private_key.Hong-Kong-MyLinuxBox.private_key_pem
# }

# output "hong-kong_private_key" {
#   value     = tls_private_key.Hong-Kong-MyLinuxBox.private_key_pem
#   sensitive = true
# }

# output "hong-kong_public_key" {
#   value = data.tls_public_key.Hong-Kong-MyLinuxBox.public_key_openssh
# }

# # Create Key Pair for California VPC
# resource "tls_private_key" "California-MyLinuxBox" {
#   algorithm = "RSA"
#   rsa_bits  = 2048
# }

# data "tls_public_key" "California-MyLinuxBox" {
#   private_key_pem = tls_private_key.California-MyLinuxBox.private_key_pem
# }

# output "california_private_key" {
#   value     = tls_private_key.California-MyLinuxBox.private_key_pem
#   sensitive = true
# }

# output "california_public_key" {
#   value = data.tls_public_key.California-MyLinuxBox.public_key_openssh
# }

# # Create Key Pair for Tokyo Test VPC
# resource "tls_private_key" "Tokyo-Test-MyLinuxBox" {
#   algorithm = "RSA"
#   rsa_bits  = 2048
# }

# data "tls_public_key" "Tokyo-Test-MyLinuxBox" {
#   private_key_pem = tls_private_key.Tokyo-Test-MyLinuxBox.private_key_pem
# }

# output "tokyo-test_private_key" {
#   value     = tls_private_key.Tokyo-Test-MyLinuxBox.private_key_pem
#   sensitive = true
# }

# output "tokyo-test_public_key" {
#   value = data.tls_public_key.Tokyo-Test-MyLinuxBox.public_key_openssh
# }

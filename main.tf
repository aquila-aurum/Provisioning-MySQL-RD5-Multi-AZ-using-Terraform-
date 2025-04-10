
provider "aws" {
  region = "us-east-1"
}

resource "aws_db_subnet_group" "rds_subnet_group" {
  name       = "rds-subnet-group"
  subnet_ids = ["subnet-abc123", "subnet-def456"]  # Replace with actual subnet IDs

  tags = {
    Name = "RDS Subnet Group"
  }
}

resource "aws_db_instance" "rds_instance" {
  identifier              = "multi-az-db"
  allocated_storage       = 20
  engine                  = "mysql"
  engine_version          = "8.0"
  instance_class          = "db.t3.micro"
  username                = "admin"
  password                = "P@ssword1234"
  db_subnet_group_name    = aws_db_subnet_group.rds_subnet_group.name
  multi_az                = true
  skip_final_snapshot     = true
  publicly_accessible     = false

  tags = {
    Name = "Multi-AZ RDS Instance"
  }
}

provider "aws" {
  region = "ca-central-1"
}

resource "aws_db_instance" "rights_guide_db" {
  allocated_storage    = 30
  storage_type         = "gp2"
  engine               = "postgres"
  engine_version       = "12.4"
  instance_class       = "db.t3.micro"
  name                 = "rightsdb"
  username             = "admin"
  password             = "password123"
  parameter_group_name = "default.postgres12"
  skip_final_snapshot  = true

  tags = {
    Name = "rights_guide_db"
  }
}


provider "aws" {
  region = "us-east-2"
  access_key = "AKIA6K5Q6XPCJNHKZRDI"
  secret_key = "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"

}

#Resource: aws_db_instance
#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_instance
resource "aws_db_instance" "default" {
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  name                 = "mydb"
  username             = "foo"
  password             = "foobarbaz"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
}

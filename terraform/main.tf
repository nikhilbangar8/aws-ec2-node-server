#ec2 server for the node hello world
resource "aws_instance" "helloworld-node" {
  ami           = "ami-01efa4023f0f3a042" 
  instance_type = "t2.medium"
  subnet_id       = "subnet-08b98fc244fa3ca56"
  user_data = "${file("install_node.sh")}"
  key_name = "nikhil-aws-pe-dev"
  vpc_security_group_ids = ["sg-0b242ca88b1d3d3fa"]

  tags = {
    Name = "HelloWorld Server"
    Owner = "nikhil.bangar"
  }
}
resource "aws_instance" "green-1-instance" {
  ami             = "ami-0f2057f28f0a44d06"
  instance_type   = "t2.micro"
  key_name = "my-ohio-key"
  security_groups = ["${aws_security_group.app-server.id}"]
  iam_instance_profile = "${aws_iam_instance_profile.IAM_profile.name}"
	
  tags {
    Name = "Green-1"
  }
  subnet_id = "${aws_subnet.private-subnet-A.id}"
}
resource "aws_instance" "blue-1-instance" {
  ami             = "ami-0f2057f28f0a44d06"
  instance_type   = "t2.micro"
  key_name = "my-ohio-key"
  security_groups = ["${aws_security_group.app-server.id}"]
  iam_instance_profile = "${aws_iam_instance_profile.IAM_profile.name}"

  tags {
    Name = "Blue-1"
  }
  subnet_id = "${aws_subnet.private-subnet-A.id}"
}
resource "aws_instance" "green-2-instance" {
  ami             = "ami-0f2057f28f0a44d06"
  instance_type   = "t2.micro"
  key_name = "my-ohio-key"
  security_groups = ["${aws_security_group.app-server.id}"]
  iam_instance_profile = "${aws_iam_instance_profile.IAM_profile.name}"

  tags {
    Name = "Green-2"
  }
  subnet_id = "${aws_subnet.private-subnet-B.id}"
}

resource "aws_instance" "blue-2-instance" {
  ami             = "ami-0f2057f28f0a44d06"
  instance_type   = "t2.micro"
  key_name = "my-ohio-key"
  security_groups = ["${aws_security_group.app-server.id}"]
  iam_instance_profile = "${aws_iam_instance_profile.IAM_profile.name}"

  tags {
    Name = "Blue-2"
  }
  subnet_id = "${aws_subnet.private-subnet-B.id}"
}

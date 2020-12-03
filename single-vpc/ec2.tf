
resource "aws_instance" "web" {
  ami           = "${var.amis}"
  instance_type = "${var.vm_type}"
  subnet_id = "${aws_subnet.pubsub.id}"
  user_data = "${file("apache.sh")}"
  vpc_security_group_ids = ["${aws_security_group.allow_port.id}"]

  tags = {
    Name = "HelloWorld"
  }
}

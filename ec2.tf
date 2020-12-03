resource "aws_instance" "web" {
  count = "${var.ec2_count}"
  ami           = "${var.amis[var.aws_region]}"
  instance_type = "${var.vm_type}"
  vpc_security_group_ids = ["${aws_security_group.websg.id}"]
  subnet_id = "${aws_subnet.pubsub.*.id[count.index]}"
  user_data = "${file("apache.sh")}"

  tags = {
    Name = "webvm-[count.index]"
  }
}

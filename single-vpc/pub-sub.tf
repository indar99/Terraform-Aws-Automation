resource "aws_subnet" "pubsub" {
  vpc_id     = "${aws_vpc.myvpc.id}"
  cidr_block = "${var.pub_sub}"
  map_public_ip_on_launch = "true"

  tags = {
    Name = "pub1"
  }
}

resource "aws_route_table_association" "prt-association-sub" {
  subnet_id      = "${aws_subnet.pubsub.id}"
  route_table_id = "${aws_route_table.prt.id}"
}

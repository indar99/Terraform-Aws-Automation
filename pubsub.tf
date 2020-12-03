
locals {
  azsnm = "${data.aws_availability_zones.azs.names}"
  pub_sub_id = "${aws_subnet.pubsub.*.id}"
}

resource "aws_subnet" "pubsub" {
  count = "${length(local.azsnm)}"
  vpc_id     = "${aws_vpc.mvpc.id}"
  cidr_block = "${cidrsubnet(var.vpc_cidr,4,count.index + 1)}"
  availability_zone = "${local.azsnm[count.index]}"
  map_public_ip_on_launch = "true"

  tags = {
    Name = "pub-${count.index}"
  }
}

resource "aws_route_table_association" "prtassociation" {
  count = "${length(local.azsnm)}"
  subnet_id      = "${local.pub_sub_id[count.index]}"
  route_table_id = "${aws_route_table.prt.id}"
}

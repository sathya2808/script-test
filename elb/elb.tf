resource "aws_elb" "bar" {
  name               = "foobar-terraform-elb"
  availability_zones = ["us-east-1a","us-east-1a"]
 listener {
    instance_port      = "${var.instanceport}"
    instance_protocol  = "${var.instanceproto}"
    lb_port            = "${var.lbport}"
    lb_protocol        = "${var.lbproto}"
  }

  health_check {
    healthy_threshold   = "${var.healththres}"
    unhealthy_threshold = "${var.unhealththres}"
    timeout             = 3
    target              = "HTTP:8000/"
    interval            = 30
  }
}
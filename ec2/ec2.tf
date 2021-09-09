resource "aws_instance" "mytf" {
  ami = "${var.amiid}"
  instance_type = "${var.instancetype}"
}
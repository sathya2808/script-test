output "ec2id" {
    value = aws_instance.mytf.id
}
output "ec2publicid" {
    value = aws_instance.mytf.public_ip
}
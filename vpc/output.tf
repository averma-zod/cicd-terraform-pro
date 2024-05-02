output "pb_sn" {
  value = aws_subnet.pb_sn.id
}

output "mysg" {
    value = aws_security_group.mysg.id
}
output "webserver1_url" {
  value = "http://${aws_instance.webserver1.public_ip}"
}
output "webserver2_url" {
  value = "http://${aws_instance.webserver2.public_ip}"
}
output "loadbalancerdns" {
  value = aws_alb.alb.dns_name
}
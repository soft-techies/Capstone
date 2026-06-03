output "vpc_id" {
  value = aws_vpc.main.id
}
output "public_subnet_id-1" {
  value = aws_subnet.public_subnet_1.id
}
output "public_subnet_id-2" {
  value = aws_subnet.public_subnet_2.id
}
output "private_subnet_a_id" {
  value = aws_subnet.private_subnet_1.id
}
output "private_subnet_b_id" {
  value = aws_subnet.private_subnet_2.id
}
output "nat_gateway_id" {
  value = aws_nat_gateway.nat_gateway.id
}
output "security_group_id" {
  value = aws_security_group.web_sg.id
}
output "app_instance_id" {
  value = aws_instance.app_machine.id
}
output "tool_instance_id" {
  value = aws_instance.tools_machine.id
}
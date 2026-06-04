output "resource_group_name" {
  value = azurerm_resource_group.main.name
}

output "vnet_name" {
  value = azurerm_virtual_network.main.name
}

output "azure_vm_public_ip" {
  value = azurerm_public_ip.vm1_pip.ip_address
}

output "azure_vm1_name" {
  value = azurerm_linux_virtual_machine.vm1.name
}
output "azure_vm2_name" {
  value = azurerm_linux_virtual_machine.vm2.name
}
output "azure_security_group_name" {
  value = azurerm_network_security_group.vm_nsg.name
}
output "azure_vm2_public_ip" {
  value = azurerm_public_ip.vm2_pip.ip_address
}

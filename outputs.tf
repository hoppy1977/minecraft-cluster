output "minecraft_public_ip" {
  value = azurerm_public_ip.minecraft.ip_address
  description = "The IP address for the Minecraft server"
}

output "minecraft_dns_name" {
  value = azurerm_public_ip.minecraft.fqdn
  description = "The DNS name for the Minecraft server"
}

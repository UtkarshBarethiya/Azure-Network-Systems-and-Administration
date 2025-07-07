variable "subscription_id" {
  type        = string
  description = "Azure subscription ID"
}

variable "admin_username" {
  type        = string
  description = "Admin username for VM"
}

variable "ssh_public_key" {
  type        = string
  description = "SSH public key for VM authentication"
}

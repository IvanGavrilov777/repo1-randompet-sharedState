terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.4.3"
    }
  }
}

resource "random_pet" "server" {
  keepers = {
    time = timestamp()
  }
}

output "value" {
  value = "New_Pet_is_called_${random_pet.server.id}"
}

output "petname" {
  value = "${random_pet.server.id}"

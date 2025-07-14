terraform {
  backend "azurerm" {
    resource_group_name  = "tf-lock-demo"
    storage_account_name = "tfstatelock5997"
    container_name       = "tfstate"
    key                  = "lockednew/demo.tfstate"
  }
}
provider "azurerm" {
  features {

  }

}
resource "azurerm_resource_group" "rgst1" {
  name     = "githubaction1"
  location = "East US"

}

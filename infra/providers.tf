terraform {
  required_providers {
    azurerm = "~> 4.0"
    random  = "~> 3.6"
    external = "~> 2.0"
  }
}

provider "azurerm" {
  features {}
}
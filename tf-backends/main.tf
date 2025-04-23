provider "azurerm" {
  features {}

  subscription_id = "5cffa66c-6158-48c3-91ba-8c9cbb653d29"
}

module "dev_backend" {
  source = "./modules/backend"
  environment = "dev"
}

module "test_backend" {
  source = "./modules/backend"
  environment = "test"
}

module "prod_backend" {
  source = "./modules/backend"
  environment = "prod"
}
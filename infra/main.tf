resource "random_string" "naming" {
    length = 6
    special = false
    upper = false
}

locals {
  prefix = "databricksdemo${random_string.naming.result}"

  tags = {
    Environment = "Demo"
    Owner       = lookup(data.external.me.result, "name")
  }
}


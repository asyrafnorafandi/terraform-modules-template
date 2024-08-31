# Example usage of the terraform module
module "main" {
  source = "../../"

  name       = "example"
  cidr_block = "10.200.0.0/16"

  tags = {
    "Environment" = "Test"
  }
}

provider "aws" {
  region = "eu-west-1"
}

module "cross-access-role" {
  source = "../"

  name        = "iam-role"
  environment = "test1"
  enabled     = true
  label_order = ["environment", "name"]

  master_account_user = "arn:aws:iam::xxxxxxxxx:root"
  policy_arn          = ["arn:aws:iam::aws:policy/AdministratorAccess", "arn:aws:iam::aws:policy/ReadOnlyAccess"]
}

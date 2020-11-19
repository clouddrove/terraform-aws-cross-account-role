provider "aws" {
  region = "eu-west-1"
}

module "cross-access-role" {
  source = "../"

  name        = "iam-role"
  application = "clouddrove"
  environment = "test"
  enabled     = false
  label_order = ["environment", "name", "application"]

  master_account_id = "xxxxxxxxxx"
  policy_arn        = "arn:aws:iam::aws:policy/AdministratorAccess"
}
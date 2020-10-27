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

  master_account_id = "924168197303"
  policy_arn        = "arn:aws:iam::aws:policy/AdministratorAccess"
}
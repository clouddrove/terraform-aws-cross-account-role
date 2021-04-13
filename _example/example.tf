provider "aws" {
  region = "eu-west-1"
}

module "cross-access-role" {
  source = "../"

  name        = "iam-role"
  environment = "test"
  enabled     = true
  label_order = ["environment", "name"]

  master_account_id = "924144197303"
  policy_arn        = "arn:aws:iam::aws:policy/AdministratorAccess"
}
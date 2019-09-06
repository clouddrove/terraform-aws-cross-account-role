provider "aws" {
  region = "eu-west-1"
}

module "cross-access-role" {
  source      = "git::https://github.com/clouddrove/terraform-aws-cross-account-role.git"

  name        = "iam-role"
  application = "clouddrove"
  environment = "test"
  label_order = ["environment", "name", "application"]

  master_account_id      = "XXXXXXXXXXX"
  policy_arn             = "arn:aws:iam::aws:policy/AdministratorAccess"
}
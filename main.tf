# Managed By : CloudDrove
# Description : This Script is used to Create iam Role and Policy.
# Copyright @ CloudDrove. All Right Reserved.

#Module      : Label
#Description : This terraform module is designed to generate consistent label names and
#              tags for resources. You can use terraform-labels to implement a strict
#              naming convention.
module "labels" {
  source = "git::https://github.com/clouddrove/terraform-labels.git?ref=tags/0.13.0"

  enabled     = var.enabled
  name        = var.name
  application = var.application
  environment = var.environment
  managedby   = var.managedby
  label_order = var.label_order
}

data "aws_iam_policy_document" "assume_role" {
  statement {
    actions = [
      "sts:AssumeRole",
    ]
    principals {
      type        = "AWS"
      identifiers = ["arn:aws:iam::${var.master_account_id}:root"]
    }
    effect = "Allow"
  }
}

#Module      : AWS IAM ROLE
#Description : Provides an IAM role.
resource "aws_iam_role" "default" {
  count                 = var.enabled ? 1 : 0
  name                  = module.labels.id
  assume_role_policy    = data.aws_iam_policy_document.assume_role.json
  description           = var.description
  tags                  = module.labels.tags
  force_detach_policies = var.force_detach_policies
  max_session_duration  = var.max_session_duration
}

#Module      : AWS IAM ROLE POLICY ATTACHMENT
#Description : PAttaches a Managed IAM Policy to an IAM role.
resource "aws_iam_role_policy_attachment" "default" {
  count      = var.enabled ? 1 : 0
  role       = aws_iam_role.default[count.index].name
  policy_arn = var.policy_arn
}


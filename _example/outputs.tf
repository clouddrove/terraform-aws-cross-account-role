#Module      : AWS IAM ROLE
#Description : Provides an IAM role.
output "role_arn" {
  value       = module.cross-access-role.role_arn
  description = "The status of the VPC peering connection request."
}

output "tags" {
  value       = module.cross-access-role.tags
  description = "A mapping of tags to assign to the role."
}
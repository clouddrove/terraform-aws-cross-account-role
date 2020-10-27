#Module      : LABEL
#Description : Terraform label module variables.
variable "name" {
  type        = string
  default     = ""
  description = "Name  (e.g. `app` or `cluster`)."
}

variable "application" {
  type        = string
  default     = ""
  description = "Application (e.g. `cd` or `clouddrove`)."
}

variable "environment" {
  type        = string
  default     = ""
  description = "Environment (e.g. `prod`, `dev`, `staging`)."
}

variable "label_order" {
  type        = list
  default     = []
  description = "Label order, e.g. `name`,`application`."
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Additional tags (e.g. map(`BusinessUnit`,`XYZ`)."
}

variable "managedby" {
  type        = string
  default     = "anmol@clouddrove.com"
  description = "ManagedBy, eg 'CloudDrove' or 'AnmolNagpal'."
}


variable "master_account_id" {
  type        = string
  description = "The ID of the master account to Read Only Access the current account."
}


variable "description" {
  type        = string
  default     = "The role to grant permissions to this account to delegated IAM users in the master account."
  description = "Description of IAM Role."
}

variable "policy_arn" {
  type        = string
  description = "Policy ARN to attach to the role. By default it attaches `AdministratorAccess` managed policy to grant full access to AWS services and resources in the current account."
}

variable "enabled" {
  type        = bool
  default     = true
  description = "Enabled to create module or not."
}

variable "max_session_duration" {
  type        = string
  default     = "3600"
  description = " - (Optional) The maximum session duration (in seconds) that you want to set for the specified role. If you do not specify a value for this setting, the default maximum of one hour is applied. This setting can have a value from 1 hour to 12 hours."
}

variable "force_detach_policies" {
  type        = bool
  default     = false
  description = "(Optional) Specifies to force detaching any policies the role has before destroying it. Defaults to false"
}
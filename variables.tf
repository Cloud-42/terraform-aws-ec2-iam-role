variable "name_prefix" {
  type        = string
  description = "The IAM Role name prefix. Conflicts with name. Choose either"
  default     = null
}

variable "name" {
  type        = string
  description = "The IAM Role name. Conflicts with name_prefix. Choose either"
  default     = null
}

variable "assume_role_policy" {
  description = "Assume Role Policy."
  default     = ""
}

variable "force_detach_policies" {
  type        = bool
  description = "Allow policy / policies to be forcibly detached."
  default     = false
}

variable "path" {
  description = "IAM Role path."
  default     = "/"
}

variable "description" {
  description = "IAM Role description."
  default     = "Managed by Terraform."
}

variable "policy_arn" {
  description = "List of policy ARNs to attached to the role."
  type        = list(string)
}

variable "principal_type" {
  type        = string
  description = "Principal type for trust identity"
  default     = "Service"
}

variable "principal_identifiers" {
  type        = list(string)
  description = "Principal identifier for trust identity"
  default     = ["ec2.amazonaws.com"]
}



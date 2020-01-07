variable "name" {
  description = "The IAM Role name."
}

variable "assume_role_policy" {
  description = "Assume Role Policy."
  default     = ""
}

variable "force_detach_policies" {
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

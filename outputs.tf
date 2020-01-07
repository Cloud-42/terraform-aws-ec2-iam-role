output "role" {
  description = "IAM Role"
  value       = aws_iam_role.this
}

output "profile" {
  description = "IAM Profile"
  value       = aws_iam_instance_profile.this
}

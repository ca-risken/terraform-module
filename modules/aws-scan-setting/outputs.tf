output "iam_role_arn" {
  description = "ARN of the RISKEN IAM Role"
  value       = aws_iam_role.risken.arn
}

output "iam_role_name" {
  description = "Name of the RISKEN IAM Role"
  value       = aws_iam_role.risken.name
}

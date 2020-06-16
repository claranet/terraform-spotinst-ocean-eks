output "worker_iam_role_arn" {
  description = "Default IAM role ARN for EKS worker groups"
  value       = aws_iam_role.workers.arn
}

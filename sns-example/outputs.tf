output "sns_id" {
  value       = aws_sns_topic.terraform_sns.id
  description = "SNS ID"
}

output "sns_arn" {
  value       = aws_sns_topic.terraform_sns.arn
  description = "SNS ARN"
}
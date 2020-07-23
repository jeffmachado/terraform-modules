output "id" {
  value       = aws_sqs_queue.terraform_queue.id
  description = "SQS ID"
}

output "arn" {
  value       = aws_sqs_queue.terraform_queue.arn
  description = "SQS ARN"
}
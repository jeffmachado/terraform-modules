locals {
  name = var.name != null ? var.name : "${var.time}-${var.produto}-${var.aplicacao}-${var.ambiente}"
  tags = {
    time      = var.time
    produto   = var.produto
    aplicacao = var.aplicacao
    ambiente  = var.ambiente
  }
}

resource "aws_sqs_queue" "terraform_queue" {
  name                      = local.name
  delay_seconds             = var.delay_seconds
  max_message_size          = var.max_message_size
  message_retention_seconds = var.message_retention_seconds
  receive_wait_time_seconds = var.receive_wait_time_seconds
  redrive_policy = var.deadLetterTargetArn != null ? jsonencode({
    deadLetterTargetArn = var.deadLetterTargetArn
    maxReceiveCount     = var.maxReceiveCount
  }) : ""

  tags = local.tags
}
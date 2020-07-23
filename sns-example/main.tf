locals {
  name = var.name != null ? var.name : "${var.time}-${var.produto}-${var.aplicacao}-${var.ambiente}"
  tags = {
    time      = var.time
    produto   = var.produto
    aplicacao = var.aplicacao
    ambiente  = var.ambiente
  }
}

resource "aws_sns_topic" "terraform_sns" {
  name = local.name
  tags = local.tags
}

resource "aws_sns_topic_subscription" "sns_topic_subscriber" {
  for_each = var.subscribers

  topic_arn = aws_sns_topic.terraform_sns.arn
  endpoint  = each.key
  protocol  = each.value.protocol
}

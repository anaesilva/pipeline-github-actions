provider "aws" {
  region = "us-east-1"
}

resource "aws_sqs_queue" "sqs-datamesh" {
  name                      = var.queue_name
  delay_seconds             = 0
  max_message_size          = 262144
  message_retention_seconds = 86400
  receive_wait_time_seconds = 0
}

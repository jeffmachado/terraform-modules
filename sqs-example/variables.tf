#Obrigatório (porque sim)
variable "time" {
  type = string
}
variable "produto" {
  type = string
}
variable "aplicacao" {
  type = string
}
variable "ambiente" {
  type = string
}

#Opcional
variable "name" {
  type    = string
  default = null
}
variable "delay_seconds" {
  type        = number
  default     = null
  description = "Default is: 0"
}
variable "max_message_size" {
  type        = number
  default     = null
  description = "Default is: 262144  (256KiB)"
}
variable "message_retention_seconds" {
  type        = number
  default     = null
  description = "Default is: 345600 (4 days)"
}
variable "receive_wait_time_seconds" {
  type        = number
  default     = null
  description = "Default is: 0"
}
variable "deadLetterTargetArn" {
  type    = string
  default = null
}
variable "maxReceiveCount" {
  type    = number
  default = 5
}
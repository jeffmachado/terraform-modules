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
variable "subscribers" {
  type    = any
  default = []
}
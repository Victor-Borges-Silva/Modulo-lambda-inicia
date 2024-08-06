variable "nome_funcao_inicia" {
  type        = string
  default     = "Default_Variabletf"
  description = "Nome da função lambda"
}

variable "instancia_id" {
  type        = list(string)
  default     = ["Default_Variabletf"]
  description = "lista de instancia a ser iniciada"
}

variable "role" {
  type = string
<<<<<<< HEAD
  #default      = "Default_Variabletf"
=======
  #default     = "Default_Variabletf"
>>>>>>> b56645d675c38b0ce7711c40f28b58f53d3a84d2
  description = "ARN da função IAM"
}
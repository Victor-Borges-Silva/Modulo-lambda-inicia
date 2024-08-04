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
  #default     = "Default_Variabletf"
  description = "ARN da função IAM"
}
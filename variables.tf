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
  type        = string
  description = "ARN da função IAM"
}

variable "tamanho_memoria" {
  type        = number
  description = "Tamanho max para armezenar a função"
}

variable "timeout" {
  type        = number
  description = "Tempo max de execução da função"
}

variable "armazenamento_temporario" {
  type        = number
  description = "Espaço do disco temporario de armazenamento"
}

variable "rastreio_log" {
  type        = string
  description = "Ativar ou Desativar rastreio"
}
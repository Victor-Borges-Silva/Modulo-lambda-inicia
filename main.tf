resource "aws_lambda_function" "IniciaEC2" {
  filename         = "${path.module}/lambda_function.zip"
  function_name    = var.nome_funcao_inicia
  role             = var.role
  handler          = "lambda_function.lambda_handler"
  runtime          = "python3.8"
  memory_size      = var.tamanho_memoria
  timeout          = var.timeout
  source_code_hash = "B6CuJjUC9NUq3LHqypP6nhKdMZNRJThp4UYykmoLq9A="

  environment {
    variables = {
      instancia_id = jsonencode(var.instancia_id)
    }
  }

  ephemeral_storage {
    size = var.armazenamento_temporario
  }

  tracing_config {
    mode = var.rastreio_log
  }

  logging_config {
    log_format = "Text"
    log_group  = "/aws/lambda/inicia"
  }

  tags = {
    Name = var.nome_funcao_inicia
  }
}
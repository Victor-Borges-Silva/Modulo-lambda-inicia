resource "aws_lambda_function" "IniciaEC2" {
  filename      = "${path.module}/lambda_function.zip"
  function_name = "IniciaEC2"
  #role             = "arn:aws:iam::087381958847:role/test_Inicia_Desliga_EC2"
  role             = var.role
  handler          = "lambda_function.lambda_handler"
  runtime          = "python3.8"
  memory_size      = 128
  timeout          = 3
  source_code_hash = "B6CuJjUC9NUq3LHqypP6nhKdMZNRJThp4UYykmoLq9A="

  environment {
    variables = {
      instancia_id = jsonencode(var.instancia_id)
    }
  }

  ephemeral_storage {
    size = 512
  }

  tracing_config {
    mode = "Active"
  }

  logging_config {
    log_format = "Text"
    log_group  = "/aws/lambda/inicia"
  }

  tags = {
    Name = var.nome_funcao_inicia
  }
}
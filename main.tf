provider "aws" {
  region = "us-west-1"
}

resource "aws_lambda_function" "inicia" {
  filename         = "./lambda_function.zip"
  function_name    = "inicia"
  role             = "arn:aws:iam::087381958847:role/Funcao_de_agendamento"
  handler          = "lambda_function.lambda_handler"
  runtime          = "python3.8"
  memory_size      = 128
  timeout          = 3
  source_code_hash = "B6CuJjUC9NUq3LHqypP6nhKdMZNRJThp4UYykmoLq9A="

  environment {
    variables = {}
  }

  ephemeral_storage {
    size = 512
  }

  tracing_config {
    mode = "PassThrough"
  }

  logging_config {
    log_format = "Text"
    log_group  = "/aws/lambda/inicia"
  }

  tags = {
    Name = var.funcao_inicia
  }
}

resource "aws_lambda_function" "desliga" {
  filename         = "./lambda_function_stop.zip"
  function_name    = "desliga"
  role             = "arn:aws:iam::087381958847:role/Funcao_de_agendamento"
  handler          = "lambda_function.lambda_handler"
  runtime          = "python3.8"
  memory_size      = 128
  timeout          = 3
  source_code_hash = "B6CuJjUC9NUq3LHqypP6nhKdMZNRJThp4UYykmoLq9A="

  environment {
    variables = {}
  }

  ephemeral_storage {
    size = 512
  }

  tracing_config {
    mode = "PassThrough"
  }

  logging_config {
    log_format = "Text"
    log_group  = "/aws/lambda/inicia"
  }

  tags = {
    Name = var.funcao_desliga
  }
}

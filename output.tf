output "lambda_function_arn" {
  value = aws_lambda_function.IniciaEC2.arn
}

output "lambda_function_name_inicia" {
  value = aws_lambda_function.IniciaEC2.function_name
}
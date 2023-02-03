output "lambda_function" {
  value = aws_lambda_function.main
}

output "iam_role" {
  value = aws_iam_role.main
}
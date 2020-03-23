output "client_id" {
  value = aws_cognito_user_pool_client.cognito.id
}

output "pool_arn" {
  value = aws_cognito_user_pool.users.arn
}

output "cloudfront_distribution_arn" {
  value = aws_cognito_user_pool_domain.custom.cloudfront_distribution_arn
}
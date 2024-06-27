output "arn" {
  description = "ARN of the bucket"
  value       = aws_s3_bucket.s3_bucket.arn
}

output "name" {
  description = "Name (id) of the bucket"
  value       = aws_s3_bucket.s3_bucket.id
}

output "domain" {
  description = "Domain name of the bucket"
  value       = aws_s3_bucket_website_configuration.s3_bucket.website_domain
}

output "website_endpoint" {
  value = aws_s3_bucket_website_configuration.s3_bucket.website_endpoint
}

output "website_url" {
  value = "https://${aws_s3_bucket.s3_bucket.bucket}-s3.website.localhost.localstack.cloud:4566/"
}
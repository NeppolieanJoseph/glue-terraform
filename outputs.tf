output "s3_bucket_source_id" {
  description = "The ID of the first S3 bucket"
  value       = module.s3_bucket_source.bucket_id
}

output "s3_bucket_source_arn" {
  description = "The ARN of the first S3 bucket"
  value       = module.s3_bucket_source.bucket_arn
}

output "s3_bucket_destination_id" {
  description = "The ID of the second S3 bucket"
  value       = module.s3_bucket_destination.bucket_id
}

output "s3_bucket_destination_arn" {
  description = "The ARN of the second S3 bucket"
  value       = module.s3_bucket_destination.bucket_arn
}


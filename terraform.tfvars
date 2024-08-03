aws_region = "us-east-1"

source_bucket_name = "glue-source-s3-bucket"
source_bucket_tags = {
  Environment = "Dev"
  Owner       = "Alice"
}

destination_bucket_name = "glue-destination-s3-bucket"
destination_bucket_tags = {
  Environment = "Dev"
  Owner       = "Bob"
}
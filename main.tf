provider "aws" {
  region = var.aws_region
}

module "s3_bucket_source" {
  source      = "./modules/s3_bucket"
  bucket_name = var.source_bucket_name
  tags        = var.source_bucket_tags
}

module "s3_bucket_destination" {
  source      = "./modules/s3_bucket"
  bucket_name = var.destination_bucket_name
  tags        = var.destination_bucket_tags
}

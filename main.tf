provider "aws" {
  region = "us-east-1"
}

module "s3_bucket" {
  source      = "./modules/s3_bucket"
  bucket_name = "my-glue-etl-bucket"
}

module "iam_role" {
  source       = "./modules/iam_role"
  role_name    = "glue-etl-role"
  policy_name  = "glue-etl-policy"
  s3_bucket    = module.s3_bucket.bucket_name
}

module "glue_job" {
  source      = "./modules/glue_job"
  job_name    = var.glue_job_name
  iam_role_arn = module.iam_role.role_arn
  script_location = "s3://${module.s3_bucket.bucket_name}/scripts/etl_script.py"
}

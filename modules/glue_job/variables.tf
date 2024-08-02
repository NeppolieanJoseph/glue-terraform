variable "job_name" {
  description = "The name of the Glue job!!!!!!!!"
  type        = string
}

variable "iam_role_arn" {
  description = "The ARN of the IAM role"
  type        = string
}

variable "script_location" {
  description = "The S3 location of the ETL script"
  type        = string
}


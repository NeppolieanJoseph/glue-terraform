variable "glue_s3_bucket_name" {
  description = "The name of the S3 bucket for Glue"
  type        = string
}

variable "glue_job_name" {
  description = "The name of the Glue job"
  type        = string
}

variable "glue_role_arn" {
  description = "The ARN of the IAM role for the Glue job"
  type        = string
}

variable "glue_command_name" {
  description = "The name of the Glue job command"
  type        = string
  default     = "glueetl"
}

variable "glue_python_version" {
  description = "The Python version for the Glue job"
  type        = string
  default     = "3"
}

variable "glue_default_arguments" {
  description = "Default arguments for the Glue job"
  type        = map(string)
  default     = {}
}

variable "glue_max_retries" {
  description = "The maximum number of retries for the Glue job"
  type        = number
  default     = 0
}

variable "glue_timeout" {
  description = "The timeout for the Glue job in minutes"
  type        = number
  default     = 2880
}

variable "tags" {
  description = "Tags for resources"
  type        = map(string)
  default     = {}
}


variable "aws_region" {
  description = "The AWS region to deploy to"
  type        = string
  default     = "us-east-1"
}

variable "source_bucket_name" {
  description = "The name of the source S3 bucket"
  type        = string
}

variable "source_bucket_policy" {
  description = "The Policy of the Source S3 bucket"
  type        = string
  default     = ""
}

#variable "source_bucket_acl" {
#  description = "The ACL of the Source S3 bucket"
#  type        = string
#  default     = "private"
#}

variable "source_bucket_tags" {
  description = "Tags to apply to the Source S3 bucket"
  type        = map(string)
  default     = {}
}

variable "destination_bucket_name" {
  description = "The name of the Destination S3 bucket"
  type        = string
}

variable "destination_bucket_policy" {
  description = "The Policy of the Destination S3 bucket"
  type        = string
  default     = ""
}

#variable "destination_bucket_acl" {
#  description = "The ACL of the Destination S3 bucket"
# type        = string
# default     = "private"
#}

variable "destination_bucket_tags" {
  description = "Tags to apply to the Destination S3 bucket"
  type        = map(string)
  default     = {}
}
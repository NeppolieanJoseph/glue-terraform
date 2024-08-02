resource "aws_glue_job" "this" {
  name       = var.job_name
  role_arn   = var.iam_role_arn
  command {
    script_location = var.script_location
    python_version  = "3"
  }

  default_arguments = {
    "--TempDir" = "s3://${var.script_location}/temp/"
  }

  max_capacity = 2.0

  execution_property {
    max_concurrent_runs = 1
  }

  glue_version = "2.0"
}

output "job_name" {
  value = aws_glue_job.this.name
}


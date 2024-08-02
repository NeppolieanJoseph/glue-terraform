import sys
from awsglue.utils import getResolvedOptions
from pyspark.context import SparkContext
from awsglue.context import GlueContext
from awsglue.job import Job
# Initialize Glue job
args = getResolvedOptions(sys.argv, ['JOB_NAME'])
sc = SparkContext()
glueContext = GlueContext(sc)
spark = glueContext.spark_session
job = Job(glueContext)
job.init(args['JOB_NAME'], args)
# Define source and destination S3 paths
source_path = "s3://source_bucket/path/to/source/file/"
destination_path = "s3://destination_bucket/path/to/destination/"
# Read data from source bucket
source_df = spark.read.format("json").load(source_path)
# Write data to destination bucket
source_df.write.format("json").save(destination_path)
job.commit()

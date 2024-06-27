variable "bucket_name" {
  description = "Name of the s3 bucket. Must be unique."
  default = "website"
  type        = string
}

variable "tags" {
  description = "Tags to set on the bucket."
  type        = map(string)
  default     = {}
}
variable "rw_s3_access" {
  description = "If set to true, Kentik platform will be able to delete old logs from s3 bucket"
  type        = bool
}

variable "vpc_id_list" {
  description = "List of VPC ids for which Kentik should gather logs"
  type        = list(string)
  default     = [""]
}

variable "s3_bucket_prefix" {
  description = "Prefix to use with s3 bucket name"
  type        = string
  default     = "kentik"
}

variable "s3_use_one_bucket" {
  description = "If we should use one or more buckets"
  type        = bool
  default     = true
}

variable "s3_flowlogs_path" {
  description = "Path on the S3 bucket for saving logs"
  type        = string
  default     = ""
}

variable "s3_base_name" {
  description = "Base name for s3 bucket. Used in single bucket mode"
  type        = string
  default     = "ingest-bucket"
}

variable "iam_role_prefix" {
  description = "Prefix to use with IAM roles"
  type        = string
  default     = "Kentik"
}

variable "store_logs_more_frequently" {
  description = "Adds option to store data in 1 minute interval (default is 10 minutes)"
  type        = bool
  default     = false
}

variable "create_role" {
  description = "If set to false it will not create kenyik_role"
  type        = bool
  default     = true
}

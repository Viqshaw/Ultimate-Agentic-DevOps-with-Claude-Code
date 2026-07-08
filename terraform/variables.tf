variable "region" {
  type        = string
  description = "AWS region"
  default     = "ap-south-1"
}

variable "project_name" {
  type        = string
  description = "Project name (used in resource naming)"
  default     = "portfolio-site"
}

variable "environment" {
  type        = string
  description = "Environment name (e.g., production, staging, development)"
  default     = "production"
}

variable "domain_name" {
  type        = string
  description = "Custom domain name (optional, defaults to CloudFront domain)"
  default     = ""
}

# If no type is specified, then Terraform assumes a variable is a string. 
variable "project" {
  type = string
  default = "hc-jsp-gcp-test"
}

variable "web_instance_count" {
  type = number
  default = 1
}

variable "cidrs" { 
  type = list
  default = [
    "10.0.0.0/16",
    "10.1.0.0/16"
  ]
}


# Path is relative to the location where terraform is running.
variable "srv_account_key" {
  # default = "hc-gcp.json"
  default = "94d796ce3b586fd29574990855f179bcc263cfc2"

}


variable "region" {
  default = "asia-northeast3"
}

variable "zone" {
  default = "asia-northeast3-c"
}

variable "environment" {
  type = string 
  default = "dev"
}

variable "machine_types" {
  type = map
  default = {
    "dev" = "f1-micro"
    "test"  = "n1-highcpu-32"
    "prod"  = "n1-highcpu-32"
  }
}

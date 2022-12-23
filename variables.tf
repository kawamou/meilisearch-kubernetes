variable "project_id" {
  default = ""
}

variable "region" {
  default = "asia-northeast1"
}

variable "zone" {
  default = "asia-northeast1-a"
}

# 環境変数による上書きは`export TF_VAR_credentials="foo"`
# 或いは.tfvarsにて上書き
variable "credentials" {
  default = ""
}
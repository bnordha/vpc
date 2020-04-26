
terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "NordhausenIO"

    workspaces {
      name = "vpc"
    }
  }
}

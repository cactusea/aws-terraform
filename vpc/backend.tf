terraform {
  required_version = ">= 1.5.7"

  backend "s3" {
    bucket         = "cactus-preprod-apnortheast2-tfstate"
    key            = "cactus/terraform/vpc/devcactus_staging_apnortheast2/terraform.tfstate"
    region         = "ap-northeast-2"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}


# store the terraform state file in s3 and lock with dynamodb
terraform {
  backend "s3" {
    bucket         = "foodsearch-state"
    key            = "foodsearchproject-ecs/terraform.tfstate"
    region         = "eu-west-3"
    profile        = "nol78"
    dynamodb_table = "terraform-state-lock"
  }
}
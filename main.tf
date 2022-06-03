terraform {
  required_providers {
    shoreline = {
      source  = "shorelinesoftware/shoreline"
      version = ">= 1.6.0"
    }
  }
}

provider "shoreline" {
  retries = 2
  debug = true
}

module "file_checker" {
  # Location of the module
  source = "./modules/file-checker"

  # Frequency to evaluate alarm conditions in seconds
  check_interval = 5

  # Resource query to select the affected resources
  resource_query = "pods | name=~'test5-cust'"

  # File to be checked
  filepath = "testfile1.txt"

  providers = { 
    #shoreline = shoreline.main
    shoreline = shoreline
  }
}

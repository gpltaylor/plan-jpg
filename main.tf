terraform {
  required_providers {
    jira = {
      source = "fourplusone/jira"
      version = "0.1.20"
    }
  }
}

provider "jira" {
  # Configuration options
  url = "https://fluent.atlassian.net"
}


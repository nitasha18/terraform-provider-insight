terraform {
  required_providers {
    insight = {
      version = "0.1"
      source = "insight.com/edu/insight"
    }
  }
}
provider "insight" {
  address = "http://localhost"
  port    = "3001"
  token   = "superSecretToken"
}

resource "insight_item" "test" {
  name = "this_is_an_item"
  description = "this is an item"
  tags = [
      "helloo",
      "world"
  ]
}
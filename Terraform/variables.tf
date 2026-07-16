variable "rg_name" {
    type = string
    description = "Name of azure resource group"
  }
variable "rg_location" {
    type = string
    description = "This is resource group location"
  }  
variable "rg_env" {
    type = string
    description = "This is resource group environment variable"
  } 
variable "rg_web_net" {
    type = string
    description = "This is name of virtual network"
  } 
variable "rg_sn" {
    type = string
    description = "This is name of virtual network"
  }  
  variable "rg_web_acr" {
    type = string
    description = "This is name of azure container registry"
  }    
  variable "rg_web_aks" {
    type = string
    description = "This is name of azure kubernetes cluster"
  }     
variable "resource_group_names" {
    type = list(string)
    description = "List of names of RGs"
  
}

variable "location" {
    type = string
    description = "The location/region where Resource group will be created"
   
}
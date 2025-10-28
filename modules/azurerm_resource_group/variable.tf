variable "resource_group_name" {
  description = "A map of resource groups to create."
  type = map(object({
    name     = string
    location = string
  }))
  
}
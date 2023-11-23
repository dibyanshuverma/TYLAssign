variable "subnet_name" {
    type = string
}

variable "network_rg" {
    type = string
}

variable "vnet_name" {
    type = string
}

variable "kv_name" {
    type = string
}

variable "kv_rg" {
    type = string
}


variable "sp_password_secret" {
    type = string
}

variable "aks_name" {
    type = string
}

variable "location" {
    type = string
}

variable "aks_resource_group_name" {
    type = string
}

variable "aks_version" {
    type = string
}

variable "node_pool_name" {
    type = string
}

variable "node_pool_type" {
    type = string
}

variable "enable_auto_scaling" {
    type = bool
    default = true
}

variable "node_count" {
    type = string
}

variable "node_size" {
    type = string
}

variable "os_disk_size" {
    type = string
    default = "50"
}

variable "max_pods" {
    type = string
    default = "10"
}

variable "min_count" {
    type = number
    default = 2
}

variable "max_count" {
    type = number
    default = 5
}

variable "service_cidr" {
    type = string
}

variable "dns_service_ip" {
    type = string
}

variable "node_resource_group" {
    type = string
}

variable "sp_id" {
    type = string
}

variable "role_based_access_control_enabled" {
    type = bool
    default = true
}
   
variable "tags" {
    type = map(string)
    default = {
      
    }
}
variable "private_cluster_enabled" {
     type = bool
    }

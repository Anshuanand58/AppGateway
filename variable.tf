variable "resource_group_name" {
  type = string
}

variable "subnet_name" {
  type = string
}

variable "vnet_name" {
  type = string
}

variable "pip_name" {
  type = string
}

variable "appgw_name" {
  type = string
}

variable "min_capacity" {
  type = string
}

variable "max_capacity" {
  type = string
}


variable "gateway_confg" {
  type = string
}

variable "frontend_ip_configuration_name" {
  type = string
}

variable "backend_address_pool_name" {
  type = string
}
variable "frontend_port_name1" {
  type = string
}

variable "backend_http_settings" {
  type = any
}

variable "http_listener" {
  type = any
}

variable "request_routing_rule" {
  type =any
}
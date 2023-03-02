module "appgw" {
  source                         = "../test"
  resource_group_name            = var.resource_group_name
  subnet_name                    = var.subnet_name
  vnet_name                      = var.vnet_name
  pip_name                       = var.pip_name
  appgw_name                     = var.appgw_name
  min_capacity                   = var.min_capacity
  max_capacity                   = var.max_capacity
  gateway_confg                  = var.gateway_confg
  frontend_port_name1             = var.frontend_port_name1
  frontend_ip_configuration_name = var.frontend_ip_configuration_name
  backend_address_pool_name      = var.backend_address_pool_name
  backend_http_settings          = var.backend_http_settings
  http_listener                  = var.http_listener
  request_routing_rule           = var.request_routing_rule
}

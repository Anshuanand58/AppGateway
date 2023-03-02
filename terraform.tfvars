resource_group_name            = "agtest-rg"
subnet_name                    = "default"
vnet_name                      = "agtestvnet"
pip_name                       = "agtest-pip"
appgw_name                     = "appgwtest"
min_capacity                   = "1"
max_capacity                   = "2"
gateway_confg                  = "my-gateway-ip-configuration"
frontend_port_name1            = "agtestvnet-feport1"
frontend_ip_configuration_name = "agtestvnet-feip"
backend_address_pool_name      = "agtestvnet-beap"
backend_http_settings = [
  {
    name                  = "agtestvnet-be-htst"
    cookie_based_affinity = "Disabled"
    path                  = "/"
    port                  = "80"
    protocol              = "Http"
    request_timeout       = "60"
  },
]

http_listener = [
  {
    name                           = "agtestvnet-httplstn"
    frontend_ip_configuration_name = "agtestvnet-feip"
    frontend_port_name             = "agtestvnet-feport"
    protocol                       = "Http"
  }
]

request_routing_rule = [
  {
    name                       = "agtestvnet-rqrt"
    rule_type                  = "Basic"
    http_listener_name         = "agtestvnet-httplstn"
    backend_address_pool_name  = "agtestvnet-beap"
    backend_http_settings_name = "agtestvnet-be-htst"
    priority                   = "10"
  }
]

tgw_ram_name = "TGW-RAM"

tgws = {
  "tgw-1"  = {
                "name"                    = "tgw-1"
                "desc"                    = "Primary Transit Gateway"
                "auto_accept_attachments" = "disable"
                "route_table_association" = "enable"
                "route_table_propagation" = "enable"
                "dns_support"             = "enable"
                "ecmp_support"            = "enable"
              }
}


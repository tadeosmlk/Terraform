routes = {

  "route01" = {
                "name"                =  "route01"
                "desc"                =  "route01"
                "vpc"                 =  "vpc-1"
                "tags"                =  { Name = "custom" }
                "subnets"             =  ["subnet-0576e12d6a4696f3a","subnet-0e82ef5a3a08a0d50"]
                "gateways"            =  []
                "routes"              =  { 
                                            "R01" = { 
                                                      "cidr_block"      = "0.0.0.0/0"
                                                      "nat_gateway_id"  = "nat-0b8b04a21520b112c"
                                                    }

                                         }                

  }

}



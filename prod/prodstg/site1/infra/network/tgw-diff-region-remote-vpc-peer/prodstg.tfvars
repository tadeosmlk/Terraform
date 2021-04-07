parent_region_id = "us-west-2"
child_region_id = "us-west-1"

peers = { 

         "vpc-4"  = {
                        "name"          = "tgw-vpc-4-attachment"
                        "vpc"           = "vpc-0081c058263e6e0f6"
                        "parent_tgw_id" = "tgw-0383969cd8dc13de1"
                        "child_tgw_id"  = "tgw-09f7d30306978d39a"
                    }

}


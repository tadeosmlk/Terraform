tgw_region_id = "us-west-2"
vpc_region_id = "us-west-2"

peers = { 

         "vpc-4"  = {
                        "name"        = "tgw-vpc-4-attachment"
                        "vpc"         = "vpc-0bb59a651285f6c96"
                        "tgw_id"      = "tgw-0383969cd8dc13de1"
                        "tgw_arn"     = "arn:aws:ram:us-west-2:419164422938:resource-share/91c2d40a-fd01-4eb5-a086-7ea8e6a052ed"
                        "subnets"     = ["subnet-0ce782e38a5e4218d","subnet-00e6dc956c7cc7ac7"]
                    }

}


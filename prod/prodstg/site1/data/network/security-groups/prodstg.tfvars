security_groups = {
                        "sg01"  = {
                                        "name"  = "sg01"
                                        "desc"  = "Allow TLS inbound traffic"
                                        "vpc"   = "vpc-1"
                        }
                        "emr-master" = {
                                        "name"  = "emr-master"
                                        "desc"  = "SG for emr master"
                                        "vpc"   = "vpc-1"
                                        }                        
                        "emr-slave" = {
                                        "name"  = "emr-slave"
                                        "desc"  = "SG for emr slave"
                                        "vpc"   = "vpc-1"
                                        }   
                        "emr-service" = {
                                        "name"  = "emr-service"
                                        "desc"  = "SG for emr slave"
                                        "vpc"   = "vpc-1"
                                        }                                                                  

                  

}


region_id = "us-west-2"
docdb = {

  "db01"    = {

                  "name"              = "prism-db01"
                  "version"           = "4.0.0"
                  "master_username"   = "master"
                  "zones"             = ["us-west-2a","us-west-2b"]
                  "subnets"           = ["subnet-0576e12d6a4696f3a","subnet-00e66eba914ef754c"]
                  "instance_type"     = "db.r5.large"
                  "instance_count"    = "2"
                  "docdb_version"     = "3.6.0"
                  "port"              = "27000"
                  "backup_retention"  = "5"
                  "backup_window"     = "07:00-09:00"
                  "skip_snapshot"     = "true"
                  "kms_key"           = "arn:aws:kms:us-west-2:419164422938:key/94758c27-4ba0-4f76-b1f7-78c05fa87b5a"  
                  "security_group"    = ["sg-0afa9a1f2bc98b734"]
                  "deletion_protection" = "false"

              }


}



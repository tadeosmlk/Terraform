region_id = "us-west-2"
emr = {

  "emr01"    = {
                  "name"                  = "prism-emr" 
                  "release_label"         = "emr-5.32.0"
                  "applications"         = ["Spark"]
                  "log_uri"               = "s3://aws-logs-419164422938-us-west-1/elasticmapreduce/"
                  "deletion_protection"   = "false"
                  "ec2_key_name"          = "emr-key-pair"
                  "ec2_profile"           = "EMR_EC2_DefaultRole"                  
                  "subnet"                = "subnet-0576e12d6a4696f3a"
                  "master_sg"             = "emr-master"
                  "slave_sg"              = "emr-slave"
                  "service_sg"            = "emr-service"

                  "master_instance_name"  = "Main"
                  "master_instance_type"  = "m5.xlarge"
                  "master_instance_count" = "1"
                  "master_ebs_type"       = "gp2"
                  "master_ebs_size"       = "64"
                  "master_ebs_vol_count"  = "1"
                  "master_ebs_iops"       = ""

                  "core_instance_name"    = "Core"
                  "core_instance_type"    = "m5.xlarge"
                  "core_instance_count"   = "2"
                  "core_ebs_type"         = "gp2"
                  "core_ebs_size"         = "64"
                  "core_ebs_vol_count"    = "1"
                  "core_ebs_iops"         = ""                 

                  "ebs_root_vol"          = "100"
                  "service_role"          = "EMR_DefaultRole"              

                  "scale_down_behavior"   = "TERMINATE_AT_TASK_COMPLETION"
                  "keep_job_flow"         = "true"                  

                  "tags"                  = { env   = "Production" 
                                              owner = "Prism"
                                            }

              }


}



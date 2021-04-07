ingress_cidr_rules = {
                "sg01-ig01"  = {
                                "name"          = "ig-cidr-01"
                                "desc"          = "Ingress Rule"
                                "from_port"     = "0"
                                "to_port"       = "65535"
                                "protocol"      = "tcp"
                                "cidr"          = ["10.1.0.0/24"]
                                "security_group" = "sg01"
                }


}

ingress_sg_rules = {
                "sg01-ig01"  = {
                                "name"          = "ig-sg-01"
                                "desc"          = "Ingress Rule"
                                "from_port"     = "0"
                                "to_port"       = "65535"
                                "protocol"      = "tcp"
                                "security_group" = "sg01"
                                "source_security_group"     = "Default"
                }
                "emr-master-sg-01" = {
                                "name"          = "emr-master-sg-01"
                                "desc"          = "emr-master-sg-01"
                                "from_port"     = "0"
                                "to_port"       = "65535"
                                "protocol"      = "tcp"
                                "security_group" = "emr-master"
                                "source_security_group"     = "emr-slave"
                                }
                "emr-master-sg-02" = {
                                "name"          = "emr-master-sg-02"
                                "desc"          = "emr-master-sg-02"
                                "from_port"     = "0"
                                "to_port"       = "65535"
                                "protocol"      = "udp"
                                "security_group" = "emr-master"
                                "source_security_group"     = "emr-slave"
                                }
                "emr-master-sg-03" = {
                                "name"          = "emr-master-sg-03"
                                "desc"          = "emr-master-sg-03"
                                "from_port"     = "-1"
                                "to_port"       = "-1"
                                "protocol"      = "icmp"
                                "security_group" = "emr-master"
                                "source_security_group"     = "emr-slave"
                                }
                "emr-slave-sg-01" = {
                                "name"          = "emr-slave-sg-01"
                                "desc"          = "emr-slave-sg-01"
                                "from_port"     = "0"
                                "to_port"       = "65535"
                                "protocol"      = "tcp"
                                "security_group" = "emr-slave"
                                "source_security_group"     = "emr-master"
                                }
                "emr-master-sg-02" = {
                                "name"          = "emr-master-sg-02"
                                "desc"          = "emr-master-sg-02"
                                "from_port"     = "0"
                                "to_port"       = "65535"
                                "protocol"      = "udp"
                                "security_group" = "emr-slave"
                                "source_security_group"     = "emr-master"
                                }
                "emr-master-sg-03" = {
                                "name"          = "emr-master-sg-03"
                                "desc"          = "emr-master-sg-03"
                                "from_port"     = "-1"
                                "to_port"       = "-1"
                                "protocol"      = "icmp"
                                "security_group" = "emr-slave"
                                "source_security_group"     = "emr-master"
                                }
                "emr-service-sg-01" = {
                                "name"          = "emr-service-sg-01"
                                "desc"          = "emr-service-sg-01"
                                "from_port"     = "9443"
                                "to_port"       = "9443"
                                "protocol"      = "tcp"
                                "security_group" = "emr-service"
                                "source_security_group"     = "emr-master"
                                }

}

ingress_self_rules = {
                "sg01-ig01"  = {
                                "name"          = "ig-self-01"
                                "desc"          = "Ingress Rule"
                                "from_port"     = "0"
                                "to_port"       = "65535"
                                "protocol"      = "tcp"
                                "security_group" = "sg01"
                }
                "emr-master-sf-01" = {
                                "name"          = "emr-master-sf-01"
                                "desc"          = "emr-master-sf-01"
                                "from_port"     = "0"
                                "to_port"       = "65535"
                                "protocol"      = "tcp"
                                "security_group" = "emr-master"
                                }
                "emr-master-sf-02" = {
                                "name"          = "emr-master-sf-02"
                                "desc"          = "emr-master-sf-02"
                                "from_port"     = "0"
                                "to_port"       = "65535"
                                "protocol"      = "udp"
                                "security_group" = "emr-master"
                                }
                "emr-master-sf-03" = {
                                "name"          = "emr-master-sf-03"
                                "desc"          = "emr-master-sf-03"
                                "from_port"     = "-1"
                                "to_port"       = "-1"
                                "protocol"      = "icmp"
                                "security_group" = "emr-master"
                                }                                                  
                "emr-slave-sf-01" = {
                                "name"          = "emr-slave-sf-01"
                                "desc"          = "emr-slave-sf-01"
                                "from_port"     = "0"
                                "to_port"       = "65535"
                                "protocol"      = "tcp"
                                "security_group" = "emr-slave"
                                }
                "emr-slave-sf-02" = {
                                "name"          = "emr-slave-sf-02"
                                "desc"          = "emr-slave-sf-02"
                                "from_port"     = "0"
                                "to_port"       = "65535"
                                "protocol"      = "udp"
                                "security_group" = "emr-slave"
                                }
                "emr-slave-sf-03" = {
                                "name"          = "emr-slave-sf-03"
                                "desc"          = "emr-slave-sf-03"
                                "from_port"     = "-1"
                                "to_port"       = "-1"
                                "protocol"      = "icmp"
                                "security_group" = "emr-slave"
                                }                                                  



}

egress_cidr_rules = {
                "sg01-ig01"  = {
                                "name"          = "ig-cidr-01"
                                "desc"          = "Egress Rule"
                                "from_port"     = "0"
                                "to_port"       = "65535"
                                "protocol"      = "tcp"
                                "cidr"          = ["10.1.0.0/24"]
                                "security_group" = "sg01"
                }
                "emr-master-cd-01"  = {
                                "name"          = "emr-master-cd-01"
                                "desc"          = "emr-master-cd-01"
                                "from_port"     = "0"
                                "to_port"       = "0"
                                "protocol"      = "-1"
                                "cidr"          = ["0.0.0.0/0"]
                                "security_group" = "emr-master"
                }  
                "emr-slave-cd-01"  = {
                                "name"          = "emr-slave-cd-01"
                                "desc"          = "emr-slave-cd-01"
                                "from_port"     = "0"
                                "to_port"       = "0"
                                "protocol"      = "-1"
                                "cidr"          = ["0.0.0.0/0"]
                                "security_group" = "emr-slave"
                }                                

}

egress_sg_rules = {
                "sg01-ig01"  = {
                                "name"          = "ig-sg-01"
                                "desc"          = "Egress Rule"
                                "from_port"     = "0"
                                "to_port"       = "65535"
                                "protocol"      = "tcp"
                                "security_group" = "sg01"
                                "source_security_group"     = "Default"
                }

}

egress_self_rules = {
                "sg01-ig01"  = {
                                "name"          = "ig-self-01"
                                "desc"          = "Egress Rule"
                                "from_port"     = "0"
                                "to_port"       = "65535"
                                "protocol"      = "tcp"
                                "security_group" = "sg01"
                }

}

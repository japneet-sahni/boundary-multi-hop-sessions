disable_mlock = true

listener "tcp" {
  address = "0.0.0.0:9202"
  purpose = "proxy"
}

worker {
  initial_upstreams = ["<private-ip-address of ingress worker>:9202"]
  auth_storage_path = "/home/ubuntu/boundary/worker2"
  tags {
    type = ["aws-egress"]
  }
}

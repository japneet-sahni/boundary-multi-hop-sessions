disable_mlock = true

hcp_boundary_cluster_id = "<cluster-id>"

listener "tcp" {
  address = "0.0.0.0:9202"
  purpose = "proxy"
}

worker {
  public_addr = "<public-ip-address of ingress worker>"
  auth_storage_path = "/home/japneet/boundary/worker1"
  tags {
    type = ["azure-ingress"]
  }
}

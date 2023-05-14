# Multi-Hop Sessions with HCP Boundary
## Creation of Boundary Folder on Azure
```sh
mkdir /home/japneet/boundary/ && cd /home/japneet/boundary/
```

## Creation of Boundary Folder on AWS
```sh
mkdir /home/ubuntu/boundary/ && cd /home/ubuntu/boundary/
```

## Installation of Boundary Worker on Azure
```sh
wget -q https://releases.hashicorp.com/boundary-worker/0.12.0+hcp/boundary-worker_0.12.0+hcp_linux_amd64.zip ;\
sudo apt-get update && sudo apt-get install unzip ;\
unzip *.zip ;\

./boundary-worker version
```

## Configuring worker
```sh
vi pki-worker.hcl
```

## Starting Boundary PKI worker
```sh
./boundary-worker server -config="pki-worker.hcl"
```

## Ingress and Egress Filters for Azure target
```sh
"azure-ingress" in "/tags/type"
"azure-egress" in "/tags/type"
```

## Ingress and Egress Filters for AWS target
```sh
"aws-ingress" in "/tags/type"
"aws-egress" in "/tags/type"
```
data "cmccloudv2_flavor_k8s" "flavor_k8s" {
  name = "c6.large.2.k8s"
}
data "cmccloudv2_keypair" "keypair1" {
  name = "keypair-duytest-1"
  type = "ssh"
}
data "cmccloudv2_subnet" "subnet1" {
  subnet_id = "81aec4f2-9fff-4917-9c78-9b0d00bfbdfb"
  # vpc_id = "${data.cmccloudv2_vpc.vpc1.id}"
  # name = "subnet-ekw6" 
  # cidr = "192.168.4.0/24"
  # gateway_ip = "192.168.4.1"
}

data "cmccloudv2_volume_type" "SSD" {
  description = "High I/O (SSD)"
}

data "cmccloudv2_security_group" "sgdefault" {
  name = "default"
}
data "cmccloudv2_flavor_dbaas" "flavor_dbaas" {
  # flavor_id = "d92cc916-a4cb-4ebf-ae81-801e963465ea"
  name = "c6.large.2.db"
}
data "cmccloudv2_flavor_ec" "flavor_ec" {
  # flavor_id = ""
  name = "c6.large.2" # search image with name contains `22.04`
  # cpu = 2
  # ram = 4
}
data "cmccloudv2_image" "ubuntu2204" {
  #image_id = "c9cd9428-84a1-4e77-946a-0f8c44a2eccc"
  os         = "ubuntu"
  visibility = "public" // public, shared, private
  name       = "22.04"  # search image with name contains `22.04`
}

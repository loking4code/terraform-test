resource "cmccloudv2_server" "duy_test" {
  name         = "duy2"    # đặt tên cho VM
  billing_mode = "hourly" # lựa chọn billing mode, monthly hoặc hourly
  zone         = "AZ1"     # lựa chọn AZ khởi tạo , AZ1, AZ2 hoặc AZ3
  flavor_id    = data.cmccloudv2_flavor_ec.flavor_ec.id
  source_id    = data.cmccloudv2_image.ubuntu2204.id
  source_type  = "image"
  volume_size  = 20       # lựa chọn dung lượng volume cho root disk
  volume_type  = "highio" # lựa chọn loại lưu trữ , highio hoặc commonio
  #source_volume_type = "${data.cmccloudv2_volume_type.SSD.id}"  
  subnet_id = data.cmccloudv2_subnet.subnet1.id # lựa chọn subnet triển khai
  //ip_address = "" #lựa chọn Ip private , nếu không có VM sẽ được tự động assign IP
  security_group_names = ["default"] # Vm được gắn với SG default
  # ecs_group_id = "bfdcd02a-1ffe-4e24-9cc5-09a0a6689923" lựa chọn tạo VM trong 1 ECS group nếu có
  # key_name = "" #chọn keypair để đăng nhập nếu có 
  # user_data = ""
  password = "Duynum1Xb@.123@#" # lựa chọn password, tối thiểu 8 ký tự , có chữ hoa và ký tự đặc biệt
  tags     = ["tag2", "tag1"]
  vm_state = "active"
}

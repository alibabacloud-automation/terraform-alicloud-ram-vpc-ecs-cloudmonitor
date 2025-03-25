data "alicloud_zones" "default" {
}

data "alicloud_images" "default" {
  name_regex = "^centos_6"
}

data "alicloud_instance_types" "default" {
  availability_zone    = data.alicloud_zones.default.zones[0].id
  cpu_core_count       = 2
  memory_size          = 8
  instance_type_family = "ecs.g6"
}

data "alicloud_cms_alarm_contact_groups" "default" {
}

module "example" {
  source = "../.."

  #ram
  ram_user_name                 = "tf_myTest123"
  ram_user_password             = var.ram_user_password
  create_ram_user_login_profile = true
  create_ram_access_key         = true
  is_admin                      = var.is_admin

  #vpc
  name              = var.name
  vpc_cidr_block    = "172.16.0.0/16"
  vs_cidr_block     = "172.16.0.0/21"
  availability_zone = data.alicloud_zones.default.zones[0].id

  #alicloud_instance
  instance_type              = data.alicloud_instance_types.default.instance_types[0].id
  system_disk_category       = "cloud_efficiency"
  system_disk_name           = var.system_disk_name
  system_disk_description    = var.system_disk_description
  image_id                   = data.alicloud_images.default.images[0].id
  internet_max_bandwidth_out = var.internet_max_bandwidth_out
  ecs_size                   = 1200
  data_disks_name            = "data_disks_name"
  category                   = "cloud_efficiency"
  description                = "tf-vpc-ecs-description"
  encrypted                  = true

  #alicloud_cms_alarm
  enable_alarm_rule                 = var.enable_alarm_rule
  alarm_rule_name                   = var.alarm_rule_name
  alarm_rule_metric_cpu_utilization = "CPUUtilization"
  alarm_rule_metric_intranet_in     = "IntranetIn"
  alarm_rule_metric_intranet_out    = "IntranetOut"
  alarm_rule_statistics             = var.alarm_rule_statistics
  alarm_rule_operator               = var.alarm_rule_operator
  alarm_rule_threshold              = var.alarm_rule_threshold
  alarm_rule_triggered_count        = var.alarm_rule_triggered_count
  alarm_rule_period                 = var.alarm_rule_period
  alarm_rule_contact_groups         = data.alicloud_cms_alarm_contact_groups.default.names
  alarm_rule_silence_time           = var.alarm_rule_silence_time
  alarm_rule_effective_interval     = var.alarm_rule_effective_interval
}
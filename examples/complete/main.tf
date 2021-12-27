data "alicloud_zones" "default" {
  available_resource_creation = "VSwitch"
  enable_details              = true
}

data "alicloud_images" "default" {
  name_regex = "^centos_6"
}

data "alicloud_instance_types" "default" {
  availability_zone = data.alicloud_zones.default.zones.0.id
}

module "example" {
  source = "../.."

  #ram
  ram_user_name     = var.ram_user_name
  ram_user_password = var.ram_user_password

  #vpc
  name              = var.name
  vpc_cidr_block    = var.vpc_cidr_block
  vs_cidr_block     = var.vs_cidr_block
  availability_zone = data.alicloud_zones.default.zones.0.id

  #alicloud_instance
  instance_type              = data.alicloud_instance_types.default.instance_types.0.id
  system_disk_category       = var.system_disk_category
  system_disk_name           = var.system_disk_name
  system_disk_description    = var.system_disk_description
  image_id                   = data.alicloud_images.default.images.0.id
  internet_max_bandwidth_out = var.internet_max_bandwidth_out
  ecs_size                   = var.ecs_size
  category                   = var.category
  description                = var.description

  #alicloud_cms_alarm
  enable_alarm_rule                 = var.enable_alarm_rule
  alarm_rule_name                   = var.alarm_rule_name
  alarm_rule_metric_cpu_utilization = var.alarm_rule_metric_cpu_utilization
  alarm_rule_metric_intranet_in     = var.alarm_rule_metric_intranet_in
  alarm_rule_metric_intranet_out    = var.alarm_rule_metric_intranet_out
  alarm_rule_statistics             = var.alarm_rule_statistics
  alarm_rule_operator               = var.alarm_rule_operator
  alarm_rule_threshold              = var.alarm_rule_threshold
  alarm_rule_triggered_count        = var.alarm_rule_triggered_count
  alarm_rule_period                 = var.alarm_rule_period
  alarm_rule_contact_groups         = var.alarm_rule_contact_groups
  alarm_rule_silence_time           = var.alarm_rule_silence_time
  alarm_rule_effective_interval     = var.alarm_rule_effective_interval
}

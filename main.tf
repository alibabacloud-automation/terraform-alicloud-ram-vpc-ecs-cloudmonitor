locals {
  project = "acs_ecs_dashboard"
}

module "ram_user" {
  source                        = "terraform-alicloud-modules/ram/alicloud"
  name                          = var.ram_user_name
  create_ram_user_login_profile = var.create_ram_user_login_profile
  password                      = var.ram_user_password
  create_ram_access_key         = var.create_ram_access_key
  is_admin                      = var.is_admin
}

# VPC
resource "alicloud_vpc" "default" {
  vpc_name   = var.name
  cidr_block = var.vpc_cidr_block
}

resource "alicloud_vswitch" "default" {
  vswitch_name = var.name
  cidr_block   = var.vs_cidr_block
  vpc_id       = alicloud_vpc.default.id
  zone_id      = var.availability_zone
}

resource "alicloud_security_group" "default" {
  name   = var.name
  vpc_id = alicloud_vpc.default.id
}

resource "alicloud_instance" "default" {
  availability_zone          = var.availability_zone
  instance_name              = var.name
  security_groups            = [alicloud_security_group.default.id]
  vswitch_id                 = alicloud_vswitch.default.id
  instance_type              = var.instance_type
  system_disk_category       = var.system_disk_category
  system_disk_name           = var.system_disk_name
  system_disk_description    = var.system_disk_description
  image_id                   = var.image_id
  internet_max_bandwidth_out = var.internet_max_bandwidth_out
  data_disks {
    name        = var.name
    size        = var.ecs_size
    category    = var.category
    description = var.description
    encrypted   = true
  }
}

resource "alicloud_cms_alarm" "cpu_utilization" {
  enabled            = var.enable_alarm_rule
  name               = var.alarm_rule_name
  project            = local.project
  metric             = "CPUUtilization"
  dimensions         = {
    instanceId = alicloud_instance.default.id
    userId     = var.alarm_user_id
  }
  escalations_critical {
    statistics          = var.alarm_rule_statistics
    comparison_operator = var.alarm_rule_operator
    threshold           = var.alarm_rule_threshold
    times               = var.alarm_rule_triggered_count
  }
  period             = var.alarm_rule_period
  contact_groups     = var.alarm_rule_contact_groups
  silence_time       = var.alarm_rule_silence_time
  effective_interval = var.alarm_rule_effective_interval
}

resource "alicloud_cms_alarm" "intranet_in" {
  enabled            = var.enable_alarm_rule
  name               = var.alarm_rule_name
  project            = local.project
  metric             = "IntranetIn"
  dimensions         = {
    instanceId = alicloud_instance.default.id
    userId     = var.alarm_user_id
  }
  escalations_critical {
    statistics          = var.alarm_rule_statistics
    comparison_operator = var.alarm_rule_operator
    threshold           = var.alarm_rule_threshold
    times               = var.alarm_rule_triggered_count
  }
  period             = var.alarm_rule_period
  contact_groups     = var.alarm_rule_contact_groups
  silence_time       = var.alarm_rule_silence_time
  effective_interval = var.alarm_rule_effective_interval
}

resource "alicloud_cms_alarm" "intranet_out" {
  enabled            = var.enable_alarm_rule
  name               = var.alarm_rule_name
  project            = local.project
  metric             = "IntranetOut"
  dimensions         = {
    instanceId = alicloud_instance.default.id
    userId     = var.alarm_user_id
  }
  escalations_critical {
    statistics          = var.alarm_rule_statistics
    comparison_operator = var.alarm_rule_operator
    threshold           = var.alarm_rule_threshold
    times               = var.alarm_rule_triggered_count
  }
  period             = var.alarm_rule_period
  contact_groups     = var.alarm_rule_contact_groups
  silence_time       = var.alarm_rule_silence_time
  effective_interval = var.alarm_rule_effective_interval
}
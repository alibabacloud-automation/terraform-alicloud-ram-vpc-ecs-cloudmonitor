output "alicloud_ecs_instance_id" {
  description = "The ID of the ecs instance."
  value       = alicloud_instance.default.id
}

output "alicloud_vswitch_id" {
  description = "The ID of the vswitch."
  value       = alicloud_vswitch.default.id
}

output "alicloud_vpc_id" {
  description = "The ID of the vpc."
  value       = alicloud_vpc.default.id
}
output "this_ram_user_unique_id" {
  description = "The unique ID assigned by alicloud"
  value       = module.ram_user.this_ram_user_unique_id
}
output "this_ram_access_key_id" {
  description = "The user's access key id"
  value       = module.ram_user.this_ram_access_key_id
}
output "this_ram_user_name" {
  description = "The user's name"
  value       = module.ram_user.this_ram_user_name
}


############
# cms alarm
############
output "this_alarm_rule_effective_interval" {
  description = "The interval of effecting alarm rule. "
  value       = alicloud_cms_alarm.cpu_utilization.effective_interval
}

output "this_alarm_rule_id" {
  description = "The ID of the alarm rule. "
  value       = alicloud_cms_alarm.cpu_utilization.id
}

output "this_alarm_rule_name" {
  description = "The alarm name. "
  value       = alicloud_cms_alarm.cpu_utilization.name
}

output "this_alarm_rule_project" {
  description = "Monitor project name. "
  value       = alicloud_cms_alarm.cpu_utilization.project
}

output "this_alarm_rule_metric" {
  description = "Name of the monitoring metrics. "
  value       = alicloud_cms_alarm.cpu_utilization.metric
}

output "this_alarm_rule_dimensions" {
  description = "Map of the resources associated with the alarm rule. "
  value       = alicloud_cms_alarm.cpu_utilization.dimensions
}

output "this_alarm_rule_period" {
  description = "Index query cycle. "
  value       = alicloud_cms_alarm.cpu_utilization.period
}


output "this_alarm_rule_contact_groups" {
  description = "List contact groups of the alarm rule. "
  value       = alicloud_cms_alarm.cpu_utilization.contact_groups
}

output "this_alarm_rule_silence_time" {
  description = " Notification silence period in the alarm state. "
  value       = alicloud_cms_alarm.cpu_utilization.silence_time
}

output "this_alarm_rule_enabled" {
  description = "Whether to enable alarm rule. "
  value       = alicloud_cms_alarm.cpu_utilization.enabled
}
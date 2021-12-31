output "alicloud_ecs_instance_id" {
  value = module.example.alicloud_ecs_instance_id
}

output "alicloud_vswitch_id" {
  value = module.example.alicloud_vswitch_id
}

output "alicloud_vpc_id" {
  value = module.example.alicloud_vpc_id
}
output "this_ram_user_unique_id" {
  description = "The unique ID assigned by alicloud"
  value       = module.example.this_ram_user_unique_id
}
output "this_ram_access_key_id" {
  description = "The user's access key id"
  value       = module.example.this_ram_access_key_id
}
output "this_ram_user_name" {
  description = "The user's name"
  value       = module.example.this_ram_user_name
}


############
# cms alarm
############
output "this_alarm_rule_effective_interval" {
  description = "The interval of effecting alarm rule. "
  value       = module.example.this_alarm_rule_effective_interval
}

output "this_alarm_rule_id" {
  description = "The ID of the alarm rule. "
  value       = module.example.this_alarm_rule_id
}

output "this_alarm_rule_name" {
  description = "The alarm name. "
  value       = module.example.this_alarm_rule_name
}
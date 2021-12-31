#ram
ram_user_password = "YourPassword123!Update"
is_admin          = false

#alicloud_instance
name                       = "update-tf-myTerraformTest"
system_disk_name           = "test_system_disk"
system_disk_description    = "test_system_disk_description"
internet_max_bandwidth_out = "20"

#alarm_rule
enable_alarm_rule             = false
alarm_rule_name               = "update-tf-rule-name"
alarm_rule_statistics         = "Maximum"
alarm_rule_operator           = "<="
alarm_rule_threshold          = "35"
alarm_rule_triggered_count    = "5"
alarm_rule_period             = "900"
alarm_rule_silence_time       = 10000
alarm_rule_effective_interval = "0:00-4:00"
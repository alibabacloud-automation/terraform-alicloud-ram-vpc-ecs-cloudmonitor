#vpc variable
variable "name" {
  description = "The specification of module name."
  type        = string
  default     = "tf-myTerraformTest"
}

#ram variable
variable "ram_user_password" {
  description = "The ram user of password."
  type        = string
  default     = "YourPassword123!"
}

variable "is_admin" {
  description = "The specification of the ram user is admin."
  type        = bool
  default     = true
}

#instance variable
variable "system_disk_name" {
  description = "The specification of the system disk name."
  type        = string
  default     = "system_disk"
}

variable "system_disk_description" {
  description = "The specification of the system disk description."
  type        = string
  default     = "system_disk_description"
}

variable "internet_max_bandwidth_out" {
  description = "The specification of the internet max bandwidth out."
  type        = number
  default     = 10
}

#alicloud_cms_alarm variable
variable "enable_alarm_rule" {
  description = "Whether to enable alarm rule. Default to true. "
  type        = bool
  default     = true
}

variable "alarm_rule_name" {
  description = "The alarm rule name. "
  type        = string
  default     = "tf-rule-name"
}

variable "alarm_rule_period" {
  description = "Index query cycle, which must be consistent with that defined for metrics. Default to 300, in seconds. "
  type        = number
  default     = 300
}

variable "alarm_rule_statistics" {
  description = "Statistical method. It must be consistent with that defined for metrics. Valid values: ['Average', 'Minimum', 'Maximum']. Default to 'Average'. "
  type        = string
  default     = "Average"
}

variable "alarm_rule_operator" {
  description = "Alarm comparison operator. Valid values: ['<=', '<', '>', '>=', '==', '!=']. Default to '=='. "
  type        = string
  default     = ">="
}

variable "alarm_rule_threshold" {
  description = "Alarm threshold value, which must be a numeric value currently. "
  type        = string
  default     = "90"
}

variable "alarm_rule_triggered_count" {
  description = "Number of consecutive times it has been detected that the values exceed the threshold. Default to 3. "
  type        = number
  default     = 3
}

variable "alarm_rule_silence_time" {
  description = "Notification silence period in the alarm state, in seconds. Valid value range: [300, 86400]. Default to 86400. "
  type        = number
  default     = 86400
}

variable "alarm_rule_effective_interval" {
  description = "The interval of effecting alarm rule. It foramt as 'hh:mm-hh:mm', like '0:00-4:00'."
  type        = string
  default     = "0:00-2:00"
}
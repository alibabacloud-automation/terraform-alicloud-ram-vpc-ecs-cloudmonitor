variable "vpc_id" {
  description = "The vpc id used to launch several vswitches. If set, the 'create' will be ignored."
  type        = string
  default     = ""
}

variable "vpc_name" {
  description = "The vpc name used to launch a new vpc."
  type        = string
  default     = "TF-VPC"
}

variable "vpc_description" {
  description = "The vpc description used to launch a new vpc."
  type        = string
  default     = "A new VPC created by Terrafrom module terraform-alicloud-vpc"
}

#about ram variable
variable "ram_user_name" {
  description = "The ram user of name."
  type        = string
  default     = "terraform_test123"
}
variable "ram_user_password" {
  description = "The ram user of password."
  type        = string
  default     = "password123!Ab"
}

variable "create_ram_user_login_profile" {
  description = "The specification of the ram user login profile."
  type        = bool
  default     = true
}
variable "create_ram_access_key" {
  description = "The specification of the create ram access key."
  type        = bool
  default     = true
}
variable "is_admin" {
  description = "The specification of the ram user is admin."
  type        = bool
  default     = true
}

variable "region_id" {
  description = "The specification of regionId."
  type        = string
  default     = "cn-hangzhou"
}

#############vpc-ecs start
variable "name" {
  description = "The specification of ecs name."
  type        = string
  default     = "tf-ecs-name"
}

variable "existing_instance_id" {
  description = "The Id of an existing ecs instance. If set, the `create` will be ignored. "
  type        = string
  default     = ""
}

variable "description" {
  description = "The specification of ecs  description."
  type        = string
  default     = "tf-ecs-description"
}

variable "instance_type" {
  description = "The specification of the instance type."
  type        = string
  default     = "ecs.n4.large"
}

variable "system_disk_category" {
  description = "The specification of the system disk category."
  type        = string
  default     = "cloud_efficiency"
}

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

variable "image_id" {
  description = "The specification of the image id."
  type        = string
  default     = "ubuntu_18_04_64_20G_alibase_20190624.vhd"
}

variable "internet_max_bandwidth_out" {
  description = "The specification of the internet max bandwidth out."
  type        = number
  default     = 10
}

variable "ecs_size" {
  description = "The specification of the ecs size."
  type        = number
  default     = 1200
}

variable "category" {
  description = "The specification of the category."
  type        = string
  default     = "cloud_efficiency"
}

variable "availability_zone" {
  description = "The available zone to launch modules."
  type        = string
  default     = "cn-hangzhou-g"
}

variable "vpc_cidr_block" {
  description = "The cidr block of VPC information."
  type        = string
  default     = "192.168.1.0/24"
}

variable "vs_cidr_block" {
  description = "The cidr block of VSwitch information."
  type        = string
  default     = "192.168.1.0/24"
}
# VPC variables
variable "create" {
  description = "Whether to create vpc. If false, you can specify an existing vpc by setting 'vpc_id'."
  type        = bool
  default     = true
}
#############vpc-ecs end


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

variable "alarm_rule_contact_groups" {
  description = "List contact groups of the alarm rule, which must have been created on the console. "
  type        = list(string)
  default     = ["test-web-server"]
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

variable "alarm_user_id" {
  description = "The alarm of userId."
  type        = string
  default     = "test"
}
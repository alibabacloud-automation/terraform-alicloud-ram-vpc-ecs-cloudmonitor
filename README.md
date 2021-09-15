Terraform module which creates Ram,Vpc,Ecs and CloudMonitor instance on Alibaba Cloud

terraform-alicloud-ram-vpc-ecs-cloudmonitor
---

English | [简体中文](README-CN.md)

This module is used to creates Ram,Vpc,Ecs and CloudMonitor instance.

These types of resources are supported:

* [alicloud_vpc_instance](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/vpc)
* [alicloud_ram_instance](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/ram_user)
* [alicloud_ram_instance](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/instance)
* [alicloud_ram_instance](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/cms_alarm)


## Usage

```hcl
module "example" {
  source            = "terraform-alicloud-modules/ram-vpc-ecs-cloudmonitor/alicloud"
}
```

## Notes

* This module using AccessKey and SecretKey are from `profile` and `shared_credentials_file`. If you have not set them
  yet, please install [aliyun-cli](https://github.com/aliyun/aliyun-cli#installation) and configure it.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | > = 0.13.0 |
| <a name="requirement_alicloud"></a> [alicloud](#requirement\_alicloud) | > = 1.114.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_alicloud"></a> [alicloud](#provider\_alicloud) | > = 1.114.0 |

## Submit Issues

If you have any problems when using this module, please opening
a [provider issue](https://github.com/aliyun/terraform-provider-alicloud/issues/new) and let us know.

**Note:** There does not recommend to open an issue on this repo.

## Authors

Created and maintained by maiqiao(bj090628@163.com)

## License

MIT Licensed. See LICENSE for full details.

## Reference

* [Terraform-Provider-Alicloud Github](https://github.com/aliyun/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs)

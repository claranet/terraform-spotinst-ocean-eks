variable "spotinst_token" {
  type        = string
  description = "Spotinst Personal Access token"
}

variable "spotinst_account" {
  type        = string
  description = "Spotinst account ID"
}

variable "cluster_identifier" {
  type        = string
  description = "Cluster identifier"
}

variable "cluster_name" {
  type        = string
  description = "Cluster name"
}

variable "cluster_version" {
  type        = string
  description = "Kubernetes supported version"
  default     = "1.15"
}

variable "region" {
  type        = string
  description = "The region the EKS cluster will be located"
}

variable "ami_id" {
  type        = string
  description = "The image ID for the EKS worker nodes. If none is provided, Terraform will search for the latest version of their EKS optimized worker AMI based on platform"
}

variable "min_size" {
  type        = number
  description = "The lower limit of worker nodes the Ocean cluster can scale down to"
}

variable "max_size" {
  type        = number
  description = "The upper limit of worker nodes the Ocean cluster can scale up to"
}

variable "desired_capacity" {
  type        = number
  description = "The number of worker nodes to launch and maintain in the Ocean cluster"
  default     = null
}

variable "key_name" {
  type        = string
  description = "The key pair to attach to the worker nodes launched by Ocean"
  default     = null
}

variable "associate_public_ip_address" {
  type        = bool
  description = "Associate a public IP address to worker nodes"
  default     = false
}

variable "vpc_id" {
  type        = string
  description = "The VPC ID that Kubernetes cluster is created in."
}

variable "vpc_private_subnets" {
  type        = list(string)
  description = "The VPC private subnets that the Kubernetes cluster is configured to use."
}

variable "worker_security_group_id" {
  type        = string
  description = "The worker security group"
}

variable "kubeconfig_filename" {
  type        = string
  description = "The path to the Kubeconfig for the cluster."
}

variable "cluster_load_balancers" {
  description = "Array of load balancer objects to add to ocean cluster. See https://www.terraform.io/docs/providers/spotinst/r/ocean_aws.html#load_balancers"
  type = list(object({
    arn  = string
    name = string
    type = string
  }))

  default = null
}

module "network_example_simple_project" {
  source  = "terraform-google-modules/network/google"
  version = "~> 2.3"
  # insert the 2 required variables here
  project_id   = var.project_id
  network_name = var.network_name

  subnets = [
    {
      subnet_name           = "subnet-sg"
      subnet_ip             = "10.10.10.0/24"
      subnet_region         = "asia-southeast1"
      subnet_private_access = "true"
      subnet_flow_logs      = "true"
      description           = "Singapore Subnet"
    },
    {
      subnet_name           = "subnet-au"
      subnet_ip             = "10.10.10.0/24"
      subnet_region         = "australia-southeast1"
      subnet_private_access = "true"
      subnet_flow_logs      = "true"
      description           = "Australia Subnet"
    },
  ]

}

module "iks" {
  source  = "terraform-cisco-modules/iks/intersight"
  version = "2.0.3"

  # Infra Config Policy Information
  cluster_name     = "iks-terraform"
  cluster_action   = "Deploy"
  vc_target_name   = "10.52.232.60"
  vc_portgroup     = ["Storage Controller Management Network"]
  vc_datastore     = "Athena-DS1"
  vc_cluster       = "Athena"
  vc_resource_pool = ""
  vc_password      = var.vc_password

  # IP Pool Information
  ip_starting_address = "10.52.233.86"
  ip_pool_size        = "15"
  ip_netmask          = "255.255.252.0"
  ip_gateway          = "10.52.232.1"
  dns_servers         = ["144.254.71.184"]
  ntp_servers         = ["10.50.136.1"]

  # Network Configuration Settings
  domain_name          = "cisco.com"
  timezone             = "Europe/London"
  proxy_http_hostname  = "proxy.esl.cisco.com"
  proxy_https_hostname = "proxy.esl.cisco.com"
  proxy_http_port      = 80
  proxy_https_port     = 80

  # Cluster information
  ssh_user     = "iksadmin"
  ssh_key      = var.ssh_key
  worker_size  = "small"
  worker_count = 1
  master_count = 1

  # Organization
  organization = var.organization
}

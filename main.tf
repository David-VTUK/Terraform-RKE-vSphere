data "rancher2_node_template" "node_template" {
  name = var.node_template
}

resource "rancher2_cluster" "cluster" {
  name        = var.cluster_name
  description = var.cluster_description
  rke_config {
    network {
      plugin = "canal"
    }
  }
}

resource "rancher2_node_pool" "nodepool" {
  cluster_id       = rancher2_cluster.cluster.id
  name             = var.cluster_name
  hostname_prefix  = var.hostname_prefix
  node_template_id = data.rancher2_node_template.node_template.id
  quantity         = var.nodepool_quantity
  control_plane    = true
  etcd             = true
  worker           = true
}
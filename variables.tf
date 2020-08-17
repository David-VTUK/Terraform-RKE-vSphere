variable rancher2_api_url {
  type        = string
  description = "URL for the Rancher API"
}

variable rancher2_access_key {
  type        = string
  description = "Access key for Rancher"
}

variable rancher2_secret_key {
  type        = string
  description = "Secret key for Rancher"
}

variable rancher2_insecure {
  type        = bool
  description = "True for self signed certificates"
}

variable node_template {
  type        = string
  description = "Name of the node template"
}

variable cluster_name {
  type        = string
  description = "Name of the cluster"
}

variable cluster_description {
  type        = string
  description = "Description of the cluster"
}

variable cluster_cni {
  type        = string
  description = "CNI for the cluster to use"
  default     = "Canal"
}

variable hostname_prefix {
  type        = string
  description = "Prefix to append to node names"
}

variable nodepool_quantity {
  type        = number
  description = "Number of nodes"
}

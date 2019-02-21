variable "prefix" {
}

variable "region" {
}

variable "kubernetes_client_id" {
  default = "YOUR_CLIENT_ID"
}

variable "kubernetes_client_secret" {
  default = "YOUR_SECRET"
}

resource "azurerm_resource_group" "rg" {
}

resource "azurerm_kubernetes_cluster" "aks" {

}
output "host" {
  value = "${azurerm_kubernetes_cluster.aks.kube_config.0.host}"
}
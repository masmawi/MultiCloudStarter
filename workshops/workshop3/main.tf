variable "prefix" {
  default = "dday-ws3"
}

variable "region" {
  default = "East US"
}

variable "kubernetes_client_id" {
  default = "YOUR_CLIENT_ID"
}

variable "kubernetes_client_secret" {
  default = "YOUR_SECRET"
}

resource "azurerm_resource_group" "rg" {
  name     = "rg-${var.prefix}"
  location = "${var.region}"
}

resource "azurerm_kubernetes_cluster" "aks" {

}
output "host" {
  value = "${azurerm_kubernetes_cluster.aks.kube_config.0.host}"
}
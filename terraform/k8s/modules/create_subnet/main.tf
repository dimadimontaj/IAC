resource "yandex_vpc_subnet" "subnet" {
    v4_cidr_blocks = var.subnet_devposition
    zone           = var.subnet_zone
    network_id     = var.network_id
}
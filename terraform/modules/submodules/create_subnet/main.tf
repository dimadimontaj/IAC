resource "yandex_vpc_subnet" "${var.subnet_name}" {
    v4_cidr_blocks = ["${var.subnet_devposition}"]
    zone           = "${var.subnet_zone}"
    network_id     = yandex_vpc_network.${var.network_name}.id
}
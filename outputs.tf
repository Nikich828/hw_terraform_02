output "VMs_name_IP" {
    value = {
        web = {
            instance_name = yandex_compute_instance.platform_1.name
            external_ip   = yandex_compute_instance.platform_1.network_interface[0].nat_ip_address
            fqdn          = yandex_compute_instance.platform_1.fqdn
        }
        db = {
            instance_name = yandex_compute_instance.platform_2.name
            external_ip   = yandex_compute_instance.platform_2.network_interface[0].nat_ip_address
            fqdn          = yandex_compute_instance.platform_2.fqdn
        }
    }
  
}
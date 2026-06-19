# output "test" {

#   value = [
#     { platform = ["ssh -i ~/.ssh/id_ed25519 ubuntu@${yandex_compute_instance.platform.network_interface[0].nat_ip_address}", yandex_compute_instance.platform.network_interface[0].ip_address] },
#   ]
# }


output "test" {

  value = [
    { 
      dev1 = [
        "instance_name ${yandex_compute_instance.platform.name}", 
        "external_ip ${yandex_compute_instance.platform.network_interface[0].nat_ip_address}", 
        "fqdn ${yandex_compute_instance.platform.fqdn}", 
      ] 
    },
    { 
      dev2 = [
        "instance_name ${yandex_compute_instance.db.name}", 
        "external_ip ${yandex_compute_instance.db.network_interface[0].nat_ip_address}", 
        "fqdn ${yandex_compute_instance.db.fqdn}", 
      ] 
    },
  ]
}
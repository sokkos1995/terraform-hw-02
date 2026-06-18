output "test" {

  value = [
    { platform = ["ssh -i ~/.ssh/id_ed25519 ubuntu@${yandex_compute_instance.platform.network_interface[0].nat_ip_address}", yandex_compute_instance.platform.network_interface[0].ip_address] },
  ]
}

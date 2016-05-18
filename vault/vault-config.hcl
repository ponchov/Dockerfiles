backend "file" {
path = "/root/vaultdata"
}

listener "tcp" {
address = "0.0.0.0:8200"
tls_disable = 1
}

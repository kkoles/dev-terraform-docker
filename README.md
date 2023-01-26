# Terraform Docker Code (Dev mode)
Terraform code to create:
* nodered
* influxdb
* grafana
docker containers.

This code requires some `.tfvars` file with the following content:

```
ext_port = {
  nodered = {
    dev  = [ <port1> ],
    prod = [ <port1> ]
  }
  influxdb = {
    dev  = [ <port1> ],
    prod = [ <port1> ]
  }
  grafana = {
    dev  = [ <port1> ],
    prod = [ <port1>, <port2> ]
  }
}
```

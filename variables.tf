variable "env" {
  type        = string
  description = "Env to deploy to"
  default     = "dev"
}

variable "container_image" {
  type        = map(any)
  description = "Container images for different environments"
  default = {
    nodered = {
      dev  = "nodered/node-red:latest",
      prod = "nodered/node-red:latest-minimal"
    }
    influxdb = {
      dev  = "quay.io/influxdb/influxdb:v2.0.2"
      prod = "quay.io/influxdb/influxdb:v2.0.2"
    }
    grafana = {
      dev  = "grafana/grafana"
      prod = "grafana/grafana"
    }
  }
}

variable "int_port" {
  type    = number
  default = 1880

  validation {
    condition     = var.int_port == 1880
    error_message = "Internal port must be 1880"
  }
}

variable "ext_port" {
  type = map(any)

  # validation {
  #   condition     = max(var.ext_port["dev"]...) <= 65535 && min(var.ext_port["dev"]...) >= 1880
  #   error_message = "External port must be in the valid port range 1880 - 65535"
  # }
}

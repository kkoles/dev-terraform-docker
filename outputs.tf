output "application_access" {
  value       = [for c in module.container[*] : c]
  description = "Name and socket fpr each app"
}
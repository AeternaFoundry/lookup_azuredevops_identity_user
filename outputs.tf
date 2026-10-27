output "identity_user_lookup_id" {
  description = "Map of id values across all identity_user_lookup, keyed the same as var.identity_user_lookup"
  value       = { for k, v in data.azuredevops_identity_user.identity_user_lookup : k => v.id }
}
output "identity_user_lookup_descriptor" {
  description = "Map of descriptor values across all identity_user_lookup, keyed the same as var.identity_user_lookup"
  value       = { for k, v in data.azuredevops_identity_user.identity_user_lookup : k => v.descriptor }
}
output "identity_user_lookup_name" {
  description = "Map of name values across all identity_user_lookup, keyed the same as var.identity_user_lookup"
  value       = { for k, v in data.azuredevops_identity_user.identity_user_lookup : k => v.name }
}
output "identity_user_lookup_search_filter" {
  description = "Map of search_filter values across all identity_user_lookup, keyed the same as var.identity_user_lookup"
  value       = { for k, v in data.azuredevops_identity_user.identity_user_lookup : k => v.search_filter }
}
output "identity_user_lookup_subject_descriptor" {
  description = "Map of subject_descriptor values across all identity_user_lookup, keyed the same as var.identity_user_lookup"
  value       = { for k, v in data.azuredevops_identity_user.identity_user_lookup : k => v.subject_descriptor }
}


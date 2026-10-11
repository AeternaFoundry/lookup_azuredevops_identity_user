data "azuredevops_identity_user" "identity_user_lookup" {
  for_each = var.identity_user_lookup

  name          = each.value.name
  search_filter = each.value.search_filter

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      read = timeouts.value.read
    }
  }
}


resource "datadog_status_page_component" "status_page_components" {
  for_each = var.status_page_components

  name       = each.value.name
  page_id    = each.value.page_id
  position   = each.value.position
  type       = each.value.type
  components = each.value.components
}


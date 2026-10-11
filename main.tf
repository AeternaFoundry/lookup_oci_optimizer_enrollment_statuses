data "oci_optimizer_enrollment_statuses" "optimizer_enrollment_statuses_lookup" {
  for_each = var.optimizer_enrollment_statuses_lookup

  compartment_id = each.value.compartment_id
  state          = each.value.state
  status         = each.value.status

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}


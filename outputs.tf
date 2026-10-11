output "optimizer_enrollment_statuses_lookup_id" {
  description = "Map of id values across all optimizer_enrollment_statuses_lookup, keyed the same as var.optimizer_enrollment_statuses_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_optimizer_enrollment_statuses.optimizer_enrollment_statuses_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "optimizer_enrollment_statuses_lookup_compartment_id" {
  description = "Map of compartment_id values across all optimizer_enrollment_statuses_lookup, keyed the same as var.optimizer_enrollment_statuses_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_optimizer_enrollment_statuses.optimizer_enrollment_statuses_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "optimizer_enrollment_statuses_lookup_enrollment_status_collection" {
  description = "Map of enrollment_status_collection values across all optimizer_enrollment_statuses_lookup, keyed the same as var.optimizer_enrollment_statuses_lookup except keys with no enrollment_status_collection are omitted"
  value       = { for k, v in data.oci_optimizer_enrollment_statuses.optimizer_enrollment_statuses_lookup : k => v.enrollment_status_collection if v.enrollment_status_collection != null && length(v.enrollment_status_collection) > 0 }
}
output "optimizer_enrollment_statuses_lookup_filter" {
  description = "Map of filter values across all optimizer_enrollment_statuses_lookup, keyed the same as var.optimizer_enrollment_statuses_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_optimizer_enrollment_statuses.optimizer_enrollment_statuses_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "optimizer_enrollment_statuses_lookup_state" {
  description = "Map of state values across all optimizer_enrollment_statuses_lookup, keyed the same as var.optimizer_enrollment_statuses_lookup except keys with no state are omitted"
  value       = { for k, v in data.oci_optimizer_enrollment_statuses.optimizer_enrollment_statuses_lookup : k => v.state if v.state != null && length(v.state) > 0 }
}
output "optimizer_enrollment_statuses_lookup_status" {
  description = "Map of status values across all optimizer_enrollment_statuses_lookup, keyed the same as var.optimizer_enrollment_statuses_lookup except keys with no status are omitted"
  value       = { for k, v in data.oci_optimizer_enrollment_statuses.optimizer_enrollment_statuses_lookup : k => v.status if v.status != null && length(v.status) > 0 }
}


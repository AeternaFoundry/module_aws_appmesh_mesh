output "appmesh_meshes_id" {
  description = "Map of id values across all appmesh_meshes, keyed the same as var.appmesh_meshes"
  value       = { for k, v in aws_appmesh_mesh.appmesh_meshes : k => v.id if v.id != null && length(v.id) > 0 }
}
output "appmesh_meshes_arn" {
  description = "Map of arn values across all appmesh_meshes, keyed the same as var.appmesh_meshes"
  value       = { for k, v in aws_appmesh_mesh.appmesh_meshes : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "appmesh_meshes_created_date" {
  description = "Map of created_date values across all appmesh_meshes, keyed the same as var.appmesh_meshes"
  value       = { for k, v in aws_appmesh_mesh.appmesh_meshes : k => v.created_date if v.created_date != null && length(v.created_date) > 0 }
}
output "appmesh_meshes_last_updated_date" {
  description = "Map of last_updated_date values across all appmesh_meshes, keyed the same as var.appmesh_meshes"
  value       = { for k, v in aws_appmesh_mesh.appmesh_meshes : k => v.last_updated_date if v.last_updated_date != null && length(v.last_updated_date) > 0 }
}
output "appmesh_meshes_mesh_owner" {
  description = "Map of mesh_owner values across all appmesh_meshes, keyed the same as var.appmesh_meshes"
  value       = { for k, v in aws_appmesh_mesh.appmesh_meshes : k => v.mesh_owner if v.mesh_owner != null && length(v.mesh_owner) > 0 }
}
output "appmesh_meshes_name" {
  description = "Map of name values across all appmesh_meshes, keyed the same as var.appmesh_meshes"
  value       = { for k, v in aws_appmesh_mesh.appmesh_meshes : k => v.name if v.name != null && length(v.name) > 0 }
}
output "appmesh_meshes_region" {
  description = "Map of region values across all appmesh_meshes, keyed the same as var.appmesh_meshes"
  value       = { for k, v in aws_appmesh_mesh.appmesh_meshes : k => v.region if v.region != null && length(v.region) > 0 }
}
output "appmesh_meshes_resource_owner" {
  description = "Map of resource_owner values across all appmesh_meshes, keyed the same as var.appmesh_meshes"
  value       = { for k, v in aws_appmesh_mesh.appmesh_meshes : k => v.resource_owner if v.resource_owner != null && length(v.resource_owner) > 0 }
}
output "appmesh_meshes_spec" {
  description = "Map of spec values across all appmesh_meshes, keyed the same as var.appmesh_meshes"
  value       = { for k, v in aws_appmesh_mesh.appmesh_meshes : k => one(v.spec) if v.spec != null && length(v.spec) > 0 }
}
output "appmesh_meshes_tags" {
  description = "Map of tags values across all appmesh_meshes, keyed the same as var.appmesh_meshes"
  value       = { for k, v in aws_appmesh_mesh.appmesh_meshes : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "appmesh_meshes_tags_all" {
  description = "Map of tags_all values across all appmesh_meshes, keyed the same as var.appmesh_meshes"
  value       = { for k, v in aws_appmesh_mesh.appmesh_meshes : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}


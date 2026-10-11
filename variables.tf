variable "status_page_components" {
  description = <<EOT
Map of status_page_components, attributes below
Required:
    - name
    - page_id
    - position
    - type
Optional:
    - components
EOT

  type = map(object({
    name     = string
    page_id  = string
    position = number
    type     = string
    components = optional(list(object({
      name     = string
      position = optional(number)
      type     = string
    })))
  }))
}


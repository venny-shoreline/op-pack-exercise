# Action to check if file exist
resource "shoreline_action" "find_file_action" {
  name = "find_file_action"
  description = "Check whether or not a specific file exists"
  
  command = "`if [[ -f \"$filepath\" ]]; then exit 1; fi`"
  params = ["filepath"]
  resource_query = "${var.resource_query} | limit=1 "

  enabled = true
}

# Action to delete file
resource "shoreline_action" "delete_file_action" {
  name = "delete_file_action"
  description = "Delete file"
  
  command = "`rm \"$filepath\"`"
  params = ["filepath"]
  resource_query = "${var.resource_query} | limit=1 "

  enabled = true
}

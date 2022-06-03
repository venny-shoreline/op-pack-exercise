# Alarm that triggers when a file exists
resource "shoreline_alarm" "file_exist_alarm" {
  name = "file_exist_alarm"
  description = "Alarm firing if a specified file is present."

  fire_query  = "find_file_action(filepath='${var.filepath}') == 1"
  clear_query = "find_file_action(filepath='${var.filepath}') == 0"
  
  # How often is the alarm evaluated.
  check_interval_sec = "${var.check_interval}"

  # User-provided resource selection
  resource_query = "${var.resource_query}"

  # low-frequency, and a linux command, so compiling won't help
  compile_eligible = false

  # alarm is raised local to a resource (vs global)
  raise_for = "local"
  
  # general type of alarm ("metric", "custom", or "system check")
  family = "custom"

  enabled = true
}


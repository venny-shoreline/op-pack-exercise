# Bot that delete file when it exists
resource "shoreline_bot" "file_exist_bot" {
  name = "file_exist_bot"
  description = "Bot that delete a specific file when it exists"
  # If the connection counts are more than the threshold, increase available pods.
  # NOTE: Use a reference to the action and alarm, to ensure they are created and available before the bot.
  command = "if ${shoreline_alarm.file_exist_alarm.name} then ${shoreline_action.delete_file_action.name}(filepath='${var.filepath}') fi"

  # general type of bot this can be "standard" or "custom"
  family = "custom"

  enabled = true
}


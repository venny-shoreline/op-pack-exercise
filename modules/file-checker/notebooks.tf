# Notebook for file checking
resource "shoreline_notebook" "file_check_notebook" {
  name = "file_check_notebook"
  description = "Notebook for file checking"
  
  data = "{\n  \"cells\": [\n    {\n      \"content\": \"Find file\",\n      \"enabled\": true,\n      \"name\": \"unnamed\",\n      \"type\": \"MARKDOWN\"\n    },\n    {\n      \"content\": \"find_file_action(filepath=\\\"testfile1.txt\\\")\",\n      \"enabled\": true,\n      \"name\": \"unnamed\",\n      \"type\": \"OP_LANG\"\n    },\n    {\n      \"content\": \"Delete file\",\n      \"enabled\": true,\n      \"name\": \"unnamed\",\n      \"type\": \"MARKDOWN\"\n    },\n    {\n      \"content\": \"delete_file_action(filepath=\\\"testfile1.txt\\\")\",\n      \"enabled\": true,\n      \"name\": \"unnamed\",\n      \"type\": \"OP_LANG\"\n    }\n  ],\n  \"enabled\": true,\n  \"params\": []\n}"
}
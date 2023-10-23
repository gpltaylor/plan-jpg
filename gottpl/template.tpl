{{ range $key, $value := .tickets }}
resource "jira_issue" "ticket-{{ .id }}" {
  issue_type  = {{.type | quote}}
  project_key = var.project
  summary     = {{.title | quote }}

  // description is optional  
  description = {{.description | quote }}

  // (optional) Instead of deleting the issue, perform this transition 
  delete_transition = 21

  // (optional) Make sure, the issue is in the desired state
  // using state_transition
  state = local.statuses.todo
  state_transition = 31 
}
{{ end }}




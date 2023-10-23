resource "jira_issue" "example" {
  issue_type  = "Task"
  project_key = var.project
  summary     = "Task jpg V1"

  // description is optional  
  description = "This is a test issue with changes" 

  // (optional) Instead of deleting the issue, perform this transition 
  delete_transition = 21

  // (optional) Make sure, the issue is in the desired state
  // using state_transition
  state = local.statuses.todo
  state_transition = 31 
}

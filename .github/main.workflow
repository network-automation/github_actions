workflow "Linklight Test Workflow" {
  on = "pull_request"
  resolves = ["Call httpbin"]
}

action "Call httpbin" {
  uses = "swinton/httpie.action@master"
  args = ["POST", "ansible.rhdemo.io/api/v2/job_templates/84/launch/", "-a=$USER_PASSWORD"]
  secrets = ["USER_PASSWORD"]
}

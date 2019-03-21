workflow "Linklight Test Workflow" {
  on = "pull_request"
  resolves = ["Call httpbin"]
}

action "Call httpbin" {
  uses = "swinton/httpie.action@master"
  args = ["POST", "https://ansible.rhdemo.io/api/v2/job_templates/84/launch/", "--user=$USER_PASSWORD"]
  secrets = ["USER_PASSWORD"]
}

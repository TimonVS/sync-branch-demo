workflow "Sync shop-staging branch with master" {
  on       = "push"

  resolves = [
    "Sync Branch"
  ]
}

action "Filter master branch" {
  uses = "actions/bin/filter@master"
  args = "branch master"
}

action "Sync Branch" {
  uses    = "./.github/sync-branch-action"

  needs   = [
    "Filter master branch"
  ]

  secrets = [
    "GITHUB_TOKEN"
  ]

  args    = [
    "shop-staging"
  ]
}

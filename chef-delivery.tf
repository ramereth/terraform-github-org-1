module "chef-delivery" {
  source        = "./modules/repository"
  name          = "chef-delivery"
  cookbook_team = github_team.chef-delivery.id
}

resource "github_team" "chef-delivery" {
  name        = "chef-delivery"
  description = "chef-delivery Action Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "chef-delivery-member-Xorima" {
  team_id  = github_team.chef-delivery.id
  username = "Xorima"
  role     = "member"
}

class DraftedTeamSerializer
  include FastJsonapi::ObjectSerializer
  attributes :user_id, :league_id, :team_name, :wins, :losses, :ties, :drafts, :players, :id
  # belongs_to :user
  # belongs_to :league

  # has_many :drafts
  # has_many :players, through: :drafted_teams
end

class DraftedTeamSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :user_id, :league_id, :team_name, :wins, :losses, :ties, :players
  # belongs_to :user
  # belongs_to :league

  has_many :drafts
  has_many :players, through: :drafted_teams
end

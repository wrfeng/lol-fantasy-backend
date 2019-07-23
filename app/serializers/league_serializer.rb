class LeagueSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :drafted_teams, :users
  # has_many :drafted_teams
end

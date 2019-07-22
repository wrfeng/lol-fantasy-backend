class LeagueSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :drafted_teams
  # has_many :drafted_teams
end

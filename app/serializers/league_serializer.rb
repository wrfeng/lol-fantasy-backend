class LeagueSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name
  has_many :drafted_teams
end

class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :matchups, :opponents, :drafted_teams, :leagues
  has_many :matchups
  has_many :opponents
  has_many :drafted_teams
  has_many :leagues
end

class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username
  has_many :matchups
  has_many :opponents
  has_many :drafted_teams
  has_many :leagues
end

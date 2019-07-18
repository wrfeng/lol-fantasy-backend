class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :matchups, :opponents, :drafted_teams, :leagues
end

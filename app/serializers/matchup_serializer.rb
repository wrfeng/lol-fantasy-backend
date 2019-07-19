class MatchupSerializer
  include FastJsonapi::ObjectSerializer
  attributes :user_id, :opponent_id
end

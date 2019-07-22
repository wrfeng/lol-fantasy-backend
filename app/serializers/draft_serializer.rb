class DraftSerializer
  include FastJsonapi::ObjectSerializer
  attributes :drafted_team_id, :player_id
end

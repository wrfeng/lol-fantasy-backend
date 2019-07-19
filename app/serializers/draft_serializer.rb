class DraftSerializer
  include FastJsonapi::ObjectSerializer
  attributes :drafted_team_id, :player_id
  belongs_to :drafted_team
  belongs_to :player
end

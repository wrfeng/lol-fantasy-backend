class PlayerSerializer
  include FastJsonapi::ObjectSerializer
  attributes :ign, :full_name, :position, :img_url
  belongs_to :drafted_team
  belongs_to :player
end

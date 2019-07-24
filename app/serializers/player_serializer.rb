class PlayerSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :ign, :full_name, :position, :team, :img_url, :stats

end

class PlayerSerializer
  include FastJsonapi::ObjectSerializer
  attributes :ign, :full_name, :position, :team, :img_url, :stats

end

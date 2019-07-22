class PlayerSerializer
  include FastJsonapi::ObjectSerializer
  attributes :ign, :full_name, :position, :img_url, :stats

end

class Draft < ApplicationRecord
  belongs_to :drafted_team
  belongs_to :player
end
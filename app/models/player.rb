class Player < ApplicationRecord
  has_many :drafts
  has_many :drafted_teams, through: :drafts
  has_many :stats
end
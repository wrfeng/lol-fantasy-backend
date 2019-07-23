class League < ApplicationRecord
  has_many :drafted_teams
  has_many :users, through: :drafted_teams
end
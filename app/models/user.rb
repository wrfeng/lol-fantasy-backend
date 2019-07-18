class User < ApplicationRecord
  has_many :matchups
  has_many :opponents, through: :matchups
  has_many :drafted_teams
  has_many :leagues, through: :drafted_teams
end
class DraftedTeam < ApplicationRecord
  belongs_to :user
  belongs_to :league

  has_many :drafts
  has_many :players, through: :drafts
end
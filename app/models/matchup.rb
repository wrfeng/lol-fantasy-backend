class Matchup < ApplicationRecord
  belongs_to :user
  belongs_to :opponent, class_name: :User

  after_create :create_inverse, unless: :has_inverse?
  after_destroy :destroy_inverse, if: :has_inverse?

  def create_inverse
    self.class.create(inverse_match_options)
  end

   def destroy_inverses
    inverses.destroy_all
  end

  def has_inverse?
    self.class.exists?(inverse_match_options)
  end

  def inverses
    self.class.where(inverse_match_options)
  end

  def inverse_match_options
    { opponent_id: user_id, user_id: opponent_id}
  end
end
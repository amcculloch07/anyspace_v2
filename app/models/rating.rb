class Rating < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :user_id, :uniqueness => true

  validates :user_id, :presence => true

  validates :venue_id, :uniqueness => true

  validates :venue_id, :presence => true

end

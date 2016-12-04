class Rating < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :venue_id, :uniqueness => true

  validates :venue_id, :presence => true

end

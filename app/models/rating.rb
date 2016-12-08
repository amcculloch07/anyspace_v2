class Rating < ApplicationRecord
  # Direct associations

  belongs_to :user

  belongs_to :venue

  # Indirect associations

  # Validations

  validates :user_id, :presence => true

  validates :venue_id, :presence => true

end

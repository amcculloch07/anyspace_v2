class Photo < ApplicationRecord
  # Direct associations

  belongs_to :venue

  # Indirect associations

  # Validations

  validates :image_url, :uniqueness => true

  validates :image_url, :presence => true

end

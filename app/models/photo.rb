class Photo < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :image_url, :uniqueness => true

  validates :image_url, :presence => true

end

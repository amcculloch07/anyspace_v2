class Venue < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :website, :uniqueness => { :scope => [:title] }

  validates :website, :presence => true

  validates :zip, :presence => true

end

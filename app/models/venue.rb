class Venue < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :address, :presence => true

  validates :city, :presence => true

  validates :state, :presence => true

  validates :website, :uniqueness => { :scope => [:title] }

  validates :website, :presence => true

  validates :zip, :presence => true

end

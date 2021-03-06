class Venue < ApplicationRecord
  # Direct associations

  belongs_to :coordinator

  has_many   :photos,
             :dependent => :destroy

  has_many   :ratings,
             :dependent => :destroy

  # Indirect associations

  # Validations

  validates :address, :presence => true

  validates :city, :presence => true

  validates :state, :presence => true

  validates :website, :uniqueness => { :scope => [:title] }

  validates :website, :presence => true

  validates :zip, :presence => true

end

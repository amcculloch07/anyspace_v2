class Coordinator < ApplicationRecord
  # Direct associations

  has_many   :venues

  # Indirect associations

  # Validations

  validates :email_address, :presence => true

  validates :name, :uniqueness => true

  validates :name, :presence => true

  validates :phone_number, :presence => true

end

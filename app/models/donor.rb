class Donor < ApplicationRecord
  has_secure_password
  has_many :ngo_donors, dependent: :destroy
  has_many :ngos, through: :ngo_donors
end

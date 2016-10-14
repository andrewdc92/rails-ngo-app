class Ngo < ApplicationRecord
  has_many :ngo_donors
  has_many :donors, through: :ngo_donors
end

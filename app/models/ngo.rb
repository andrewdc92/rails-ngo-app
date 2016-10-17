class Ngo < ApplicationRecord

  extend FriendlyId
 friendly_id :name, use: :slugged

  has_many :ngo_donors
  has_many :donors, through: :ngo_donors

end

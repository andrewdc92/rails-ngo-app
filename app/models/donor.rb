class Donor < ApplicationRecord
  has_secure_password
  has_many :ngo_donors, dependent: :destroy
  has_many :ngos, through: :ngo_donors

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: {minimum: 6}

  def self.confirm(params)
    @donor = Donor.find_by({email: params[:email]})
    @donor.try(:authenticate, params[:password])
  end

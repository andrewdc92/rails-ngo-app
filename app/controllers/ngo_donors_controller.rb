class NgoDonorsController < ApplicationController

  def index
    @donor = Donor.find(params[:donor_id])
    @ngos = @donor.ngos
  end

  def create
    @ngo = Ngo.find(params[:ngo_id])
    @ngo.donors.push(current_donor)
    redirect_to current_donor
  end

end

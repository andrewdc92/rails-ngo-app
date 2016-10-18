class DonorsController < ApplicationController
  before_action :logged_in?, only: [:show, :edit]

  def index
    if !admin
      redirect_to root_path
    end
    @donors= Donor.all
  end

  def new
    @donor = Donor.new
  end

  def create
    @donor= Donor.new(donor_params)
    if @donor.save

      login(@donor)
      redirect_to donor_path(@donor)
    else
    flash[:error]= @donor.errors.full_messages
    redirect_to new_donor_path
    end
  end

  def show
    @donor = Donor.find_by_id(donor_id)
  end

  def edit
    @donor = Donor.find_by_id(donor_id)
  end

  def update
    @donor = Donor.find_by_id(donor_id)
    @donor.update_attributes(donor_params)
    redirect_to donor_path
  end

  def destroy
    @donor = Donor.find_by_id(donor_id)
    @donor.delete
    redirect_to donors_path
  end

  private
  def donor_params
    params.require(:donor).permit(:first_name, :last_name, :email, :password)
  end

  def donor_id
    params[:id]
  end

end

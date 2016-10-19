class SessionsController < ApplicationController

  def new
    @donor = Donor.new
  end

  def create
    @donor = Donor.confirm(donor_params)
    if @donor
      login(@donor)
      flash[:notice] = "Successfully logged in."
      redirect_to @donor
    else
      flash[:error] = "Incorrect username or password"
      redirect_to login_path
    end
  end

  def destroy
    logout
    flash[:notice] = "Sucessfully logged out"
    redirect_to root_path
  end

  private

  def donor_params
    params.require(:donor).permit(:email, :password,)
  end
end

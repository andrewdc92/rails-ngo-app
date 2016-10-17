module SessionsHelper
  def current_donor
    @current_donor ||= Donor.find_by_id(session[:donor_id])
  end

  def login(donor)
    session[:donor_id] = donor.id
    @current_donor = donor
  end

  def logged_in?
    if current_donor == nil
      redirect_to new_session_path
    end
  end

  def logout
    @current_donor = session[:donor_id] = nil
  end

end

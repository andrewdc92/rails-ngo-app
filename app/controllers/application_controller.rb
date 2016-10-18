class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def application
  @ngos = Ngo.all
  end
  include SessionsHelper
end

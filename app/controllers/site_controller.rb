class SiteController < ApplicationController


  def index
    @countries = Country.all
  end

  def show
      @ngos = Ngo.all

      render template: "site/donate"
  end
end

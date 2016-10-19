class SiteController < ApplicationController


  def show
      @ngos = Ngo.all

      render template: "site/donate"
  end



end

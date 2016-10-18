class SiteController < ApplicationController
  def index
      @ngos = Ngo.all
  end
end

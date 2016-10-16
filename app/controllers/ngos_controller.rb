class NgosController < ApplicationController
  def index
    @ngos = Ngo.all
  end

  def new
    @ngo = Ngo.new
  end

  def create
    @ngo = Ngo.create(ngo_params)
    redirect_to ngo_path(@ngo)
  end

  def show
    @ngo = Ngo.find_by_id(ngo_id)
  end

  def edit
    @ngo = Ngo.find_by_id(ngo_id)
  end

  def update
    @ngo = Ngo.find_by_id(ngo_id)
    @ngo.update_attributes(ngo_params)
    redirect_to ngo_path
  end

  def destroy
    @ngo = Ngo.find_by_id(ngo_id)
    @ngo.delete
    redirect_to ngos_path
  end



  private
  def ngo_params
    params.require(:ngo).permit(:name, :content, :website, :category)
  end

  def ngo_id
    params[:id]
  end

end

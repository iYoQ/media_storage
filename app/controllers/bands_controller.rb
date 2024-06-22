class BandsController < ApplicationController
  def index
    @bands = Band.all
  end

  def show
    @albums = Album.where(band_id: params[:id])
  end

  def new
    @band = Band.new
  end

  def create
    @band = Band.new(song_params)
    if @band.save
      redirect_to action: 'index'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def band_params
    params.require(:band).permit(:name)
  end
end

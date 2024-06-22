class AlbumsController < ApplicationController
  def show
    @songs = Song.where(album_id: params[:id])
  end

  def new
    @album = Album.new
    @album.songs.build
  end

  def create
    @album = Album.new(album_params)
    @album.band_id = params[:band_id]
    if @album.save
      redirect_to band_album_path(@album.band_id, @album)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def album_params
    params.require(:album).permit(:title, songs_attributes: [:song_file])
  end
end

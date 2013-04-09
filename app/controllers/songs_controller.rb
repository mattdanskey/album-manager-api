class SongsController < ApplicationController

  def index
    render json: Song.where(album_id: params[:album_id]), root: false
  end
    
  def create
    render json: Song.create!(params.permit(:track, :title)), root: false
  end
  
  def show
    render json: Song.find(params[:id]), root: false
  end
  
  def update
    @song.update!(params.permit(:track, :title))
    render json: @song, root: false
  end
  
  def destroy
    Song.destroy(params[:id])
  end

end

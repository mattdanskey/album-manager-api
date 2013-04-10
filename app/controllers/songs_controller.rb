class SongsController < ApplicationController

  def index
    render json: Song.where(album_id: params[:album_id]), root: false
  end
    
  def create
    render json: Song.create!(title: params[:title], track: params[:track], album_id: params[:album_id]), root: false
  end
  
  def show
    render json: Song.find(params[:id]), root: false
  end
  
  def update
    @song = Song.update(params[:id], title: params[:title], track: params[:track])
    render json: @song, root: false
  end
  
  def destroy
    Song.destroy(params[:id])
  end

end

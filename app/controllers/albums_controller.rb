class AlbumsController < ApplicationController
  
  def index
    render json: Album.all, root: false
  end
  
  def create
    render json: Album.create!(params.permit(:artist, :title, :genre), root: false
  end

  def show
    render json: Album.where(id: params[:id]), root: false
  end
  
  def update
    @album.update!(params.permit(:artist, :title, :genre))
    render json: @album, root: false
  end

  def destroy
    Album.destroy(params[:id])
    render json: "", root: false, status: 200
  end
  
end

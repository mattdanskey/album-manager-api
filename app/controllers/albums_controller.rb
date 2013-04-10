class AlbumsController < ApplicationController
  
  def index
    render json: Album.all, root: false
  end
  
  def create
    render json: Album.create!(title: params[:title], artist: params[:artist], genre: params[:genre]), root: false
  end

  def show
    render json: Album.where(id: params[:id]), root: false
  end
  
  def update
    @album = Album.update(params[:id], title: params[:title], artist: params[:artist], genre: params[:genre])
    render json: @album, root: false
  end

  def destroy
    Album.destroy(params[:id])
    render json: "", root: false, status: 200
  end
  
end

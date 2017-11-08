class SiteController < ApplicationController
  def search
    # unless params[:term].nil?
    #   @artists = Artist.where("name like ?", "%#{params[:term]}%")
    # end
    unless params[:term].nil?
      artists = Artist.where("name like ?", "%#{params[:term]}%") 
      albums = Album.where("name like ?", "%#{params[:term]}%")
      labels = Label.where("name like ?", "%#{params[:term]}%")
      @results = artists + albums + labels 
    end
  end
end

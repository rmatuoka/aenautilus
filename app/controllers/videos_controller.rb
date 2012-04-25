class VideosController < ApplicationController
  def index
    @Videos = Video.all(:conditions => ['published = 1'])
  end
  
  def show
    @Video = Video.find(params[:id])
    @Link = @Video.link.sub("http://www.youtube.com/watch?v=","http://www.youtube.com/v/")
  end
end

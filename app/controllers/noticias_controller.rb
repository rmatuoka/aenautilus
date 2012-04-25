class NoticiasController < ApplicationController
  before_filter :load_notices
  
  def index
    @Noticias = Notice.all(:conditions =>['published = 1'], :order => 'created_at DESC')
  end
  
  def show
    @Noticia = Notice.find(params[:id])
    
    #SELECIONA IMAGENS
    @Imagens = @Noticia.notice_images.all
  end
  
end

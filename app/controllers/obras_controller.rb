class ObrasController < ApplicationController
  before_filter :load_notices
  
  def index
    if !params[:area].blank?
      @Cases = Case.all(:conditions => ['published = 1 AND area = ?', params[:area]], :order => "id DESC")
      
      if params[:area] == "Obras Primas"
        @Titulo = "titulos/obraprimas.png"
      else
        @Titulo = "titulos/cases_sucesso.png"
      end
      
    else
      redirect_to home_path
    end
  end
  
  def show
    @Case = Case.find(params[:id])
    
    #SELECIONA IMAGENS
    @Imagens = @Case.case_images.all
  end

end

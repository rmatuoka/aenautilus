class SheetsController < ApplicationController
  before_filter :load_notices
  
  def new
    @Sheet = Sheet.new
  end
  
  def create
    @Sheet = Sheet.create(params[:sheet])
    
    if @Sheet.save
      redirect_to filtracao_sheet(@Sheet)
    else
      
    end
  end
  
  def filtracao
    @Sheet = Sheet.find(params[:id])
    @Area = @Sheet.comprimento * @Sheet.largura
    @Volume = @Area * ((@Sheet.profundidade_minima + @Sheet.profundidade_max)/2)
    @TempoMaximoCirculacao = @Sheet.largura + @Sheet.profundidade_minima + @Sheet.profundidade_max + @Sheet.uso_piscina + @Volume
  
    
  end
end

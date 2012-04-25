class RevendasController < ApplicationController
  before_filter :load_notices, :load_states
  
  def load_states
    @Estados = Reseller.all(:conditions => ['published = 1'], :group => "state", :order => "state ASC")
  end
  
  def resultado
    #flash[:msg] = params[:pessoa][:estado] + params[:pessoa][:cidade]
    @Resultados = Reseller.all(:conditions => ['state = ? AND city = ? AND published = 1', params[:pessoa][:estado], params[:pessoa][:cidade]])
  end
  
  def popula_cidades
    @Cidades = Reseller.all(:conditions => ['state = ?', params[:estado]], :group => "city", :order => "city ASC")
    render :update do |page|
      page.replace_html "cidades", "Escolha a cidade " + select("pessoa","cidade", @Cidades.map {|c| c.city})
    end
  end
end

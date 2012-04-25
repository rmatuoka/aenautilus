class LinhasController < ApplicationController
  before_filter :load_notices
  
  def show
    @Section = Section.find(params[:id])
    
    @Categorias = @Section.categories.all(:conditions => ['published = 1'], :order => "position ASC")
    
    #@Produtos = @Categoria.products.find(:all, :conditions => ['published = 1'])
  end
end

class ProdutosController < ApplicationController
  def show
    @Section = Section.find(params[:linha_id])
    
    @Categoria = @Section.categories.find(params[:categoria_id])
    
    @Produto = @Categoria.products.find(params[:id])
    
    @Imagens = @Produto.product_images.find(:all)
  end
end

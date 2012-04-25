class ServicosController < ApplicationController
  before_filter :load_notices
  
  def index
    @DynamicPage = DynamicPage.find(ID_SERVICOS)
    
    @Title = @DynamicPage.title
    @ImageTitle = @DynamicPage.image.url
    @Body = @DynamicPage.body
  end
end

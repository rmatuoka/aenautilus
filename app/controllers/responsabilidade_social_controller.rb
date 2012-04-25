class ResponsabilidadeSocialController < ApplicationController
  before_filter :load_notices
  
  def index
    @DynamicPage = DynamicPage.find(ID_RESPONSABILIDADE)
    
    @Title = @DynamicPage.title
    @ImageTitle = @DynamicPage.image.url
    @Body = @DynamicPage.body
  end
end

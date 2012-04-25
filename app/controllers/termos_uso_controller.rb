class TermosUsoController < ApplicationController
  before_filter :load_notices
  
  def index
    @DynamicPage = DynamicPage.find(ID_TERMOS)
    
    @Title = @DynamicPage.title
    @ImageTitle = @DynamicPage.image.url
    @Body = @DynamicPage.body
  end
end

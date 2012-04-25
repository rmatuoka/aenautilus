class DepoimentosController < ApplicationController
  def index
    @Depoimentos = Testimonial.all(:conditions => ['published = 1'], :order => 'created_at DESC')
  end
end

class TestimonialsController < ApplicationController
  def index
    redirect_to new_testimonial_path  
  end
  
  def new
    @Depoimento = Testimonial.new
  end

  def create
    @Depoimento = Testimonial.create(params[:testimonial])
    @Depoimento.published = 0
    
    if @Depoimento.save
      redirect_to testimonial_path(@Depoimento)
    else
      flash[:msg] = "Erro ao inserir os dados. Verifique os erros."
      render :action => "new"
    end
  end
end

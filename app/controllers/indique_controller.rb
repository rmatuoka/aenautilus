class IndiqueController < ApplicationController
  def index
    redirect_to new_indique_item_path
  end
  
  def new
    @Indique = Indicate.new
  end
  
  def create
    @Indique = Indicate.create(params[:indicate])
    
    if @Indique.save
      #ENVIA EMAIL
      @corpo = "Olá #{@Indique.friend_name}. <br><br>Seu amigo #{@Indique.name} nos indicou.<br><br. #{@Indique.name} diz: #{@Indique.message}"
      
      Notifier.deliver_enviar(@corpo.to_s,"Nautilus - Seu amigo nos indicou!", @Indique.area)
      #if Notifier.deliver_enviar(@corpo.to_s,"Contato Via SITE", @Contact.email)

      #end
      
      redirect_to indique_item_path(@Indique)
    else
      render :action => "new"
    end
  end
end

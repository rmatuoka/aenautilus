class IndicatesController < ApplicationController
  def index
    redirect_to new_indicates_item_path
  end
  
  def show
    @Indique = Indicate.find(params[:id])
  end
  
  def new
    @Indique = Indicate.new
  end
  
  def create
    @Indique = Indicate.create(params[:indicate])
    
    if @Indique.save
      #ENVIA EMAIL
      @corpo = "Olá #{@Indique.friend_name}. <br><br>Seu amigo #{@Indique.name} nos indicou.<br><br> #{@Indique.name} diz: #{@Indique.message}"
      
      Notifier.deliver_enviar(@corpo.to_s,"Nautilus - Seu amigo nos indicou!", @Indique.friend_mail)
      #if Notifier.deliver_enviar(@corpo.to_s,"Contato Via SITE", @Contact.email)

      #end
      
      redirect_to indicate_path(@Indique)
    else
      render :action => "new"
    end
  end
end

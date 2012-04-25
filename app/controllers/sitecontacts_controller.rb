class SitecontactsController < ApplicationController
  def index
    redirect_to new_sitecontact_path
  end
  
  def show
    @Contato = Sitecontact.find(params[:id])
  end
  
  def new
    @Contato = Sitecontact.new
  end

  def create
    @Contato = Sitecontact.create(params[:sitecontact])
    
    if @Contato.save
      #ENVIA EMAIL
      @corpo = "Nome: #{@Contato.name} <br>E-mail: #{@Contato.email} <br>Telefone: #{@Contato.phone} <br>Empresa: #{@Contato.company} <br>Cidade: #{@Contato.city} <br>Estado: #{@Contato.state} <br>Mensagem: #{@Contato.message} <br>"
      Notifier.deliver_enviar(@corpo.to_s,"Nautilus - Contato via site", @Contato.area, @Contato.area)
      #if Notifier.deliver_enviar(@corpo.to_s,"Contato Via SITE", @Contact.email)

      #end
      
      redirect_to sitecontact_path(@Contato)
    else
      render :action => "new"
    end
  end
end

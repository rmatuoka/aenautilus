class Notifier < ActionMailer::Base
    #se precisar os parametros são Email.deliver_padrao(corpo, "Assunto",email para&nbsp;&nbsp; #enviar(destino), email para resposta)
    def enviar(corpo, assunto, email = "rmatuoka@korewa.com.br",responder = "rmatuoka@korewa.com.br")
        recipients email
        from "rmatuoka@korewa.com.br"
        subject assunto
        reply_to responder
        body :corpo => corpo
    end

end

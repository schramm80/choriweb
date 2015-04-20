class Contactanos < ApplicationMailer

  def contactanos

    mail(to: 'carlos.schramm80@gmail.com', subject: "Contacto")
  end


end

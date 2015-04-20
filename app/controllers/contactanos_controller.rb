class ContactanosController < ApplicationController

  def new
    @contactanos = Contactanos.new
  end

  def create
    @contactanos = Contactanos.new(params[:contactanos])
    @contactanos.request = request
    if @contactanos.deliver
      flash.now[:error] = nil
      flash.now[:notice] = 'Gracias por tu mensaje!'
    else
      flash.now[:error] = 'No se pudo mandar tu correo.'
      render :new
    end
  end

end

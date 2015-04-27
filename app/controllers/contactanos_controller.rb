class ContactanosController < ApplicationController

  def new
    @contactano = Contactano.new
  end

  def create
    @contactano = Contactano.new(params[:contactano])
    @contactano.request = request
    if @contactano.deliver
      flash.now[:error] = nil
      flash.now[:notice] = 'Gracias por tu mensaje!'
    else
      flash.now[:error] = 'No se pudo mandar tu correo.'
      render :new
    end
  end

end

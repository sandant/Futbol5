class UsuariosController < ApplicationController

  def index
    @usuarios = Usuario.find(:all)
  end

  def show
	@usuario = Usuario.new
  end
  
  def create 
	@usuario = Usuario.new(params[:usuario])
	unless @usuario.save?
	  render :action => "new"
	else	
	  flash[:message] = "No se guardo el nuevo usuario!"
	  render :action => 'test'
	end
  end
  
  def new 
	@usuario = Usuario.new
  end
  
  def ejemplo
	
  end
end

class UsuariosController < ApplicationController

  def index
    @usuarios = Usuario.find(:all)
  end

  def show
	@usuario = Usuario.new
  end
  
  def create 
	unless params[:usuario].nil?
	  @usuario = Usuario.new(params[:usuario])
	  @usuario.save()
	  unless @usuario.valid?
	    render :action => "new"
      end
	else	
	  flash[:message] = "No se guardo el nuevo usuario!"
	  render :action => 'test'
	end
  end
  
  def new 
	@usuario = Usuario.new
  end
end

class SessionsController < ApplicationController
  def new
  end

  def create
    usuario = Usuario.find_by_username(params[:username])
    if usuario && usuario.authenticate(params[:password])
      session[:usuario_id] = usuario.id
      session[:usuario_rol] = usuario.rol
      # redirect_to root_url
      redirect_to root_url
      flash[:notice] = "Inicio de sesión correcto"

      # flash[:success] = "Inicio de sesión correcto, bienvenido/a " +
        # usuario.username + "."
    else
      flash.now[:warning] = "Nombre de usuario o contraseña incorrectos"
      render "new"
    end
  end

  def destroy
    session[:usuario_id] = nil
    session[:usuario_rol] = nil
    redirect_to root_url
    flash[:success] = "Sesión cerrada correctamente"
  end
end

class SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token, raise: false
  def new
  end

  def create
    usuario = Usuario.find_by_username(params[:username])
    if usuario && usuario.authenticate(params[:password])
      session[:usuario_id] = usuario.id
      session[:usuario_rol] = usuario.rol
      flash[:notice] = "Inicio de sesión correcto"
      redirect_to root_url

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

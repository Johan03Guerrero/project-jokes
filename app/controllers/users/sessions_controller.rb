# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  skip_before_action :require_no_authentication, only: [:new]

  # GET /resource/sign_in
  def new
    if user_signed_in?
      redirect_to '/jokes/index'
      return
    end
    super
  end

  # GET /resource/sign_in
  def create
    if user_signed_in? 
      redirect_to '/jokes/index', notice: 'Inició Sesión Exitosamente' if user_signed_in?
    else
      redirect_to user_session_path, notice: 'Datos de ingreso incorrectos'
    end
  end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end

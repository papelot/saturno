class SessionsController < ApplicationController
  def new
  end

  def create
    user= User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      if user.activated?
        log_in user
        params[:session][:remember_me] == '1' ? remember(user) : forget(user)
        redirect_back_or user
      else
        message  = "Utente non attivo. "
        message += "Controlla la tua mail per attivare la registrazione. "
        flash[:warning] = message
        redirect_to root_url
      end      
    else
      flash.now[:danger] = 'Email e/o password non valida' # Not quite right!
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end

class StaticPagesController < ApplicationController
  def home
  end

  def portfolio
  end

  def contact
  end


  def send_mail
    name  = params[:name]
    email = params[:email]
    body  = params[:comments]
    if verify_recaptcha == true
      ContactMailer.contact_email(name, email, body).deliver_now	
      flash[:success] = 'success'
      redirect_to contact_path(anchor: "notifikasi")
    else
      redirect_to contact_path(anchor: "notifikasi")
    end
  end
end


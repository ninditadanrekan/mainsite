class StaticPagesController < ApplicationController
  def home
  end

  def portfolio
  end

  def contact
  end


  def send_mail
    name = params[:name]
    email = params[:email]
    body = params[:comments]
    ContactMailer.contact_email(name, email, body).deliver_now	
    redirect_to contact_path, notice: 'Message sent'
end
end


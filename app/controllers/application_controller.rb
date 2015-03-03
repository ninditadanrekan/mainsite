class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end

class ContactMailer < ActionMailer::Base
    default to: 'nindita@keruyuk.com'
    def contact_email(name, email, body)
        @name  = name
        @email = email
        @body  = body
        mail(from: email, subject: 'Contact Request')
    end
end

class UserMailer < ApplicationMailer
  default from: 'no-reply@eventbrite-nicolas.herokuapp.com'
  
  def welcome_email(user)
    # We recover user instance so that we can we pass it to the view in @user
    @user = user 
    
    # We define a @url variable that we will use in the e-mail view
    @url  = 'http://eventbrite-nicolas.herokuapp.com/' 
    
    # It's this call to mail() that allows you to send e-mail by defining recipient and subject
    mail(to: @user.email, subject: 'Welcome to our website !') 
  end
end

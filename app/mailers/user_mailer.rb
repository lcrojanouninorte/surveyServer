class UserMailer < ActionMailer::Base
  default from: "kevin@joonik.com"

  def recovery_password(user)
    @user = user
    password = user.password
    mail(to: @user.email, subject: 'Recordatorio de Contraseña')
  end
end

class UserMailer < ActionMailer::Base
  default from: "kevin@joonik.com"

  def recovery_password(user, password)
    @user = user
    @password = user.password
    mail(to: @user.email, subject: 'Recordatorio de Contraseña')
  end

  def password_reset(user)
  	@user = user
    mail(to: @user.email, subject: 'Recordatorio de Contraseña')
  end
end

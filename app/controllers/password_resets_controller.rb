class PasswordResetsController < ApplicationController
  def create
  	user = User.find_by_email(params[:email])
  	user.send_password_reset if user
  	#redirect_to root_url, :notice => "Email sent with password reset instructions."
  end

  def update
  	@user = User.find_by_reset_password_token(reset_params[:token])
  	if @user.reset_password_sent_at > 2.hours.ago		
  		@user.password = reset_params[:password]
  		@user.password_confirmation = reset_params[:password_confirmation]
  		@user.save
  		render json: @user, status: :ok
  	else
  		render json: @user, status: :unprocessable_entity
  	end
  end

  def reset_params
    params.require(:reset).permit(:token, :password, :password_confirmation)
  end
end

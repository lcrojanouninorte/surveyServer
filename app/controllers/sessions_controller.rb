class SessionsController < ApiController

  def index
    @user = User.find_by_auth_token(auth_token_params)
    if @user
      status = :ok
    else
      status = :unprocessable_entity
    end
    render json: @user, status: status
  end

  def create
   user = User.find_for_database_authentication(email: session_params[:email])
    if user.present? && user.valid_password?(session_params[:password])
    	@user = user
    	@authenticated = true
    	status = :ok
    else
    	@authenticated = false
    	status = :unprocessable_entity
    end
    
    render json: @user, status: status

  end

  def session_params
    params.require(:session).permit(:email, :password, :opera)
  end

  def auth_token_params
    params.require(:session).permit(:auth_token)
  end
end

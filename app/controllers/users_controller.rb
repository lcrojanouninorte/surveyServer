class UsersController < ApiController
  #before_filter :api_authenticate_user!, only: [:update]
  wrap_parameters :user, include: [:email, :password, :password_confirmation]

  def index

    if params[:search]
      @users=User.where("LOWER(first_name) like LOWER(?) OR LOWER(last_name) like LOWER(?) OR LOWER(email) like LOWER(?) OR LOWER(redes) like LOWER(?) OR LOWER(location) like LOWER(?) OR CONCAT(LOWER(first_name), ' ',LOWER(last_name)) like LOWER(?)", "#{params[:search]}%", "#{params[:search]}%", "#{params[:search]}%", "#{params[:search]}%", "#{params[:search]}%", "#{params[:search]}%")
    else

      @users=User.all
    end
    render json: @users
  end
 

  def create
  	@user = User.new(user_params)
  	if @user.save
      UserMailer.recovery_password(@user).deliver
  		render json: @user, status: :ok
      
  	else
  		render json: @user, status: :unprocessable_entity
  	end
  end
 
  def update
    user_to_update = User.where(:email =>user_params[:email]).first
    if user_to_update.update_attributes(user_params)
    	render json: user_to_update, status: :ok
    else
    	render json: user_to_update, status: :unprocessable_entity
    end
  end

  def recovery
    user = User.find_by_email(params[:email])
    if user
      UserMailer.recovery_password(@user).deliver
    else
      puts "jajajajjajaj"
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end

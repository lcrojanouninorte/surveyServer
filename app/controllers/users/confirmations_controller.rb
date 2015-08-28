class Users::ConfirmationsController < Devise::ConfirmationsController
  def new
    super
  end

  def create
    super

  end
    

  def show

    self.resource = resource_class.confirm_by_token(params[:confirmation_token])
    yield resource if block_given?

    if resource.errors.empty?
      set_flash_message(:notice, :confirmed) if is_flashing_format?
      redirect_to "http://www.onlinecolombia.tv/#home"
    else
      respond_with_navigational(resource.errors, status: :unprocessable_entity){ render :new }
    e
end

class PasswordsController < Devise::PasswordsController
  def update
    self.resource = resource_class.reset_password_by_token(resource_params)
    yield resource if block_given?

    if resource.errors.empty?
      resource.unlock_access! if unlockable?(resource)
      flash_message = resource.active_for_authentication? ? :updated : :updated_not_active
      set_flash_message(:notice, flash_message) if is_flashing_format?
      #sign_in(resource_name, resource)
      respond_with resource, location: after_resetting_password_path_for(resource)
    else
      respond_with resource
    end
  end

  def after_resetting_password_path_for(resource)
    api_v1_sucess_password_index_path
    #"http://www.onlinecolombia.tv/#home"
    #edit_user_password_path(reset_password_token: resource_params[:reset_password_token])
  end
end

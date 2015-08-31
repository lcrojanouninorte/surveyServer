class ApiController < ActionController::Base
  before_filter :authenticated_user?
 # before_filter :set_locale

  def authenticated_user?
    authenticate_with_http_token do |token, options|
      puts "kevinaqui"
      @_current_user = User.find_by(auth_token: token)

      @_current_user.present?

    end
  end

  def api_authenticate_user!
    
    realm = "Application"

    api_current_user || request_http_token_authentication(realm) 

  end

  def api_current_user
    @_current_user
  end

  private

    def extract_locale_from_accept_language_header
      http_accept_language = request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first
      if['es','en'].include? http_accept_language
        http_accept_language
      else
        I18n.locale
      end
    end

    def set_locale
      locale = extract_locale_from_accept_language_header || I18n.default_locale
      I18n.locale = locale
    end
end

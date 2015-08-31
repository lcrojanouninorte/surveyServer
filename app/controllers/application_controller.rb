

class ApplicationController < ActionController::API

	include ActionController::MimeResponds

	before_filter :set_access_control_headers

def set_access_control_headers
  headers['Access-Control-Allow-Origin'] = 'http://localhost:8000'
end
end

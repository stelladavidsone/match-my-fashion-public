class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  # Used to confirm the session key of the current user
  def index
    @landing = true
  end
end

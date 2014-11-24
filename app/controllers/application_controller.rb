class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

private

    def login(user, type)
      if type == "volunteer"
        session[:volunteer_id] = user.id
      elsif type == "organization"
        session[:organization_id] = user.id
      end
    end

    def logged_in?
      !!current_user
    end

    def current_user
      User.find(session[:volunteer_id]) if session[:volunteer_id]
    end


    helper_method :logged_in?, :current_user, :login
end

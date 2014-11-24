class SessionsController < ApplicationController

 def create
    user = Volunteer.find_or_create_from_auth_hash(self.auth_hash)
    login(user)
    redirect_to edit_volunteer_path(user)
  end

  def destroy
    reset_session
    redirect_to root_path
  end 

  protected
    def auth_hash
      request.env['omniauth.auth']
    end
end

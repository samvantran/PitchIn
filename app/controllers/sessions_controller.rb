class SessionsController < ApplicationController

 def create
  if session[:is_organization] == false
    user = Volunteer.find_or_create_from_auth_hash(self.auth_hash)
    login(user, "volunteer")
      redirect_to volunteer_path(user)    
  else
    user = Organization.find_or_create_from_auth_hash(self.auth_hash)
    login(user, "organization")
    redirect_to organization_opportunities_path(user)
  end
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

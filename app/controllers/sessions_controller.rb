class SessionsController < ApplicationController

 def create
  if session[:is_organization] == false
    user = Volunteer.find_or_create_from_auth_hash(self.auth_hash)
    login(user, "volunteer")
    if !user.opportunity
      redirect_to edit_volunteer_path(user)
    else
      @opportunity = user.opportunity
      @already_registered = true
      redirect_to final_volunteer_path(user)
    end
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

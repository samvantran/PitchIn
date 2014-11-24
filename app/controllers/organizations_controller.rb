class OrganizationsController < ApplicationController

  def new
    @organization = Organization.new
    session[:is_organization] = true

    redirect_to '/auth/facebook'
  end

  def index
    @organizations = Organization.all
  end

  def show
    @organization = Organization.find(params[:organization_id])
  end

  def create
  end

  def edit
  end

  def destroy
  end
end

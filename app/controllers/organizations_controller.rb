class OrganizationsController < ApplicationController
  def show
    @organization = Organization.find(params[:id])
  end

  def create
  end

  def edit
  end

  def destroy
  end

  def new
    @organization = Organization.new
    session[:is_organization] = true

    redirect_to '/auth/facebook'
  end

  def index
  end
end

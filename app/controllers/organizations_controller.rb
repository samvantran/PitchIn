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
  end

  def index
  end
end

class OpportunitiesController < ApplicationController
  def index
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
    @volunteer = Volunteer.find(sessions[:id])
  end

  def destroy
  end
end

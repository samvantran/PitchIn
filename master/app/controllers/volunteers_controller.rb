
require'pry'
class VolunteersController < ApplicationController
  def new
    @volunteer = Volunteer.new
  end

  def index
    @volunteers = Volunteer.all
  end

  def create
    @volunteer = Volunteer.create(volunteer_params)

    redirect_to edit_volunteer_path(@volunteer)
  end

  def edit
    @volunteer = Volunteer.find(params[:id])
    

  end

  def show
    # @volunteer = Volunteer.find(params[:id])
    @volunteer = Volunteer.find(1)
  end

  def destroy
  end

  def update
  end

  private
    def volunteer_params
      params.require(:volunteer).permit(:name)
    end
end

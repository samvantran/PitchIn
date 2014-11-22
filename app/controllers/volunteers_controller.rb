
class VolunteersController < ApplicationController
  def new
    @volunteer = Volunteer.new
  end

  def index
    @volunteers = Volunteer.all
  end

  def create
    @volunteer = Volunteer.find_by(volunteer_params)

    redirect_to edit_volunteer_path(@volunteer)
  end

  def edit
    @volunteer = Volunteer.find(params[:id])
  end

  def show
    @volunteer = Volunteer.find(params[:id])
    @opportunities = Opportunity.all
    @matches = get_matching_opportunities(@volunteer, @opportunities)
  end

  def update
    volunteer = Volunteer.find(params[:id])
    volunteer.update(volunteer_params)

    redirect_to volunteer_path(volunteer) 
  end

  def destroy
  end

  def final
    volunteer = Volunteer.find(params[:id])
    @opportunity = Opportunity.find(params[:opportunity_id])
    
    @opportunity.volunteer_id = volunteer.id
    @opportunity.save
  end

  def get_matching_opportunities(volunteer, opportunities)
    matching_opportunities = []    
    opportunities.each do |opportunity|
      if volunteer_skill_is_needed(volunteer, opportunity) && volunteer_is_available(volunteer, opportunity)
        matching_opportunities << opportunity
      end
    end
    return matching_opportunities[0..2]

    # eventually want to write a SQL statement to retrieve results
    # Volunteer.joins(:opportunties).where("opportunity.skills.include?(volunteer.skills.any?)")
  end

  def volunteer_is_available(volunteer, opportunity)
    volunteer.datetime == opportunity.datetime
  end

  def volunteer_skill_is_needed(volunteer, opportunity)
    volunteer.skills.find { |s| opportunity.skills.include?(s) }
  end

  private
    def volunteer_params
      params.require(:volunteer).permit(:name, :location, :datetime, :skill_ids => [])
    end
end

class OpportunitiesController < ApplicationController
  def index
  end

  def new
    @organization = Organization.find(params[:organization_id])
    @opportunity = Opportunity.new
  end

  def edit
  end

  def create
    opportunity = Opportunity.create(opportunity_params)
    opportunity.organization_id = params[:organization_id]
    opportunity.save
    raise opportunity.inspect

    redirect_to 
  end

  def update
    @volunteer = Volunteer.find(sessions[:id])
  end

  def destroy
  end

  private
    def opportunity_params
      params.require(:opportunity).permit(:name, :datetime, :skill_ids => [])
    end

    def skill_params
      params.require(:opportunity).permit(:skill_ids => [])
    end
end

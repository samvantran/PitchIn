class OpportunitiesController < ApplicationController
  def index
    @organization = Organization.find(params[:organization_id])
  end

  def new
    @organization = Organization.find(params[:organization_id])
    @opportunity = Opportunity.new
  end

  def edit
  end

  def create
    org = Organization.find(params[:organization_id])
    org.opportunities.build(opportunity_params)
    org.save

    redirect_to organization_opportunities_path(org)
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

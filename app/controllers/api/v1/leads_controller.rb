class Api::V1::LeadsController < ApplicationController
  respond_to :json

  def index
    @leads = Lead.all
    
    respond_with @leads
  end

  def show
    respond_with lead
  end

  def create
    @lead = Lead.create(lead_params)

    respond_with lead do |format|
      format.json { render 'show' }
    end
  end

  def update
    respond_with lead.update(lead_params)
  end

  def destroy
    respond_with lead.destroy
  end

  private

  def lead
    @lead ||= Lead.find(params[:id])
  end

  def lead_params
    params.require(:lead).permit(:first_name, :last_name, :email, :phone, :status, :notes)
  end
end
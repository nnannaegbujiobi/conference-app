class Api::ConferencesController < ApplicationController


  def speaker_name
    @message = "speaker"

  end

  def index 
    @conferences = Conference.all 
    render "index.json.jbuilder"
  end 

  def show
    @conference = Conference.find_by(id:params[:id])
    render "show.json.jbuilder"
  end

  def update
    @conference = Conference.find_by(id: params[:id]) 

  end
end
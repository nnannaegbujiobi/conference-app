class Api::SpeakersController < ApplicationController

  def index
  @speakers = Speaker.all
  render "index.json.jbuilder"

end

def speaker_method
  @speaker = Speaker.first
   render "one_speaker.json.jbuilder"
end
end
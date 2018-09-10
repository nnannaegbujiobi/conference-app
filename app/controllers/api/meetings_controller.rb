class Api::MeetingsController < ApplicationController


  def index
    @meetings = Meeting.all 
    render "index.json.jbuilder"

  end

#   def first_meeting
#     @mornigMeeting = Meeting.first
#     render "show.json.jbuilder"
# end
end

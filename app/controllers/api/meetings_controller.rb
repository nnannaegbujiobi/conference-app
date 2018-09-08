class Api::MeetingsController < ApplicationController


  def meeting_method
    @meeting = Meeting.all 
    render "meeting.json.jbuilder"

  end

  # def first_meeting
  #   @mornigMeeting =Meeting.first_meeting
  #   if meeting
  #   render "first_meeting.json.jbuilder"
end

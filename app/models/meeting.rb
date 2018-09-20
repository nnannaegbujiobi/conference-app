class Meeting < ApplicationRecord
has_many :meeting_topics
has_many :topics, through: :meeting_topic
   belongs_to :speaker
end

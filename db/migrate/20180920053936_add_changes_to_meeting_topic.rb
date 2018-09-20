class AddChangesToMeetingTopic < ActiveRecord::Migration[5.2]
  def change
    add_column :meeting_topics, :topic_id, :integer
    add_column :meeting_topics, :meeting_id, :integer
  end
end

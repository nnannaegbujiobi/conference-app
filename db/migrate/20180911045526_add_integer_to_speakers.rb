class AddIntegerToSpeakers < ActiveRecord::Migration[5.2]
  def change
    add_column :speakers, :age, :integer
  end
end

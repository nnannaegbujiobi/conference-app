class AddColumn < ActiveRecord::Migration[5.2]
  def change
    create_table :speakers do |t|
      t.string :gender
      t.integer :age

  end
end
end
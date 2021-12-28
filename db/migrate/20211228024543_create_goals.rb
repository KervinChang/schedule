class CreateGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :goals do |t|
      t.string :title
      t.string :icon
      t.string :frequency
      t.boolean :is_reached
    end
  end
end

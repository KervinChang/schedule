class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.integer :week
      t.string :weekday
      t.string :title
      t.boolean :is_executed
    end
  end
end

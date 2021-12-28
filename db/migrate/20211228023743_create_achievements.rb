class CreateAchievements < ActiveRecord::Migration[5.2]
  def change
    create_table :achievements do |t|
      t.string :title
      t.string :icon
      t.boolean :is_achieved
      t.text :implementation
      t.integer :score
      t.string :award
      t.datetime :achieved_at
    end
  end
end

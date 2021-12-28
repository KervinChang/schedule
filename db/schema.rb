ActiveRecord::Schema.define(version: 2021_12_28_024813) do

  create_table 'achievements', options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb4', force: :cascade do |t|
    t.string 'title'
    t.string 'icon'
    t.boolean 'is_achieved'
    t.text 'implementation'
    t.integer 'score'
    t.string 'award'
    t.datetime 'achieved_at'
  end

  create_table 'goals', options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb4', force: :cascade do |t|
    t.string 'title'
    t.string 'icon'
    t.string 'frequency'
    t.boolean 'is_reached'
  end

  create_table 'plans', options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb4', force: :cascade do |t|
    t.integer 'week'
    t.string 'weekday'
    t.string 'title'
    t.boolean 'is_executed'
  end

  create_table 'reaches', options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb4', force: :cascade do |t|
    t.bigint 'goal_id'
    t.date 'date'
    t.text 'implementation'
    t.index ['goal_id'], name: 'index_reaches_on_goal_id'
  end

  create_table 'tasks', options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb4', force: :cascade do |t|
    t.date 'date'
    t.string 'title'
    t.boolean 'is_completed'
  end

  add_foreign_key 'reaches', 'goals'
end

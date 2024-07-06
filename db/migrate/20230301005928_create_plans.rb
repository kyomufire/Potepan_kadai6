class CreatePlans < ActiveRecord::Migration[6.1]
  def change
    create_table :plans do |t|
      t.string :title
      t.datetime :start_date
      t.datetime :end_date
      t.boolean :allday
      t.string :schedule

      t.timestamps
    end
  end
end

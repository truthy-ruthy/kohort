class CreateDaytimes < ActiveRecord::Migration
  def change
    create_table :daytimes do |t|
      t.string :time_of_day

      t.timestamps null: false
    end
  end
end

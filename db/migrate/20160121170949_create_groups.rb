class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.integer :zip_code

      t.timestamps null: false
    end
  end

end

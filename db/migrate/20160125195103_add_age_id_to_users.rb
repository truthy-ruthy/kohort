class AddAgeIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :age_id, :integer
  end
end

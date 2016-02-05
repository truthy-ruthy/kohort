class AddColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :coed_id, :integer
    add_column :users, :daytime_id, :integer
    add_column :users, :frequencie_id, :integer
    add_column :users, :interaction_id, :integer
    add_column :users, :industrie_id, :integer
  end
end

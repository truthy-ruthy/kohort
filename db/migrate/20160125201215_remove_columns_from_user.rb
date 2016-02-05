class RemoveColumnsFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :coed_id, :integer
    remove_column :users, :daytime_id, :integer
    remove_column :users, :frequencie_id, :integer
    remove_column :users, :interaction_id, :integer
    remove_column :users, :industrie_id, :integer
  end
end

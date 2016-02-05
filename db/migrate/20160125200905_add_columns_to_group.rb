class AddColumnsToGroup < ActiveRecord::Migration
  def change
    add_column :groups, :age_id, :integer
    add_column :groups, :coed_id, :integer
    add_column :groups, :daytime_id, :integer
    add_column :groups, :frequencie_id, :integer
    add_column :groups, :interaction_id, :integer
    add_column :groups, :industrie_id, :integer
  end
end

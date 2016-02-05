class AddChangesToKohorts < ActiveRecord::Migration
  def change
    remove_column :kohorts, :frequencie_id, :integer
    remove_column :kohorts, :industrie_id, :integer
    add_column :kohorts, :industry_id, :integer
    add_column :kohorts, :frequency_id, :integer
  end
end

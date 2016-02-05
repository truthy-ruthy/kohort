class AddColumnsToKohorts < ActiveRecord::Migration
  def change
    add_column :kohorts, :industry_id, :integer
    add_column :kohorts, :frequency_id, :integer
    add_column :kohorts, :coed_id, :integer
    add_column :kohorts, :interaction_id, :integer
    add_column :kohorts, :conversation_id, :integer
    add_column :kohorts, :age_id, :integer
    add_column :kohorts, :daytime_id, :integer
  end
end

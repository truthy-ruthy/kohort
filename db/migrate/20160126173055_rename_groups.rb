class RenameGroups < ActiveRecord::Migration
  def change
    rename_table :groups, :kohorts
  end

  def self.down
     rename_table :kohorts, :groups
  end
end

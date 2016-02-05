class RenameGroups < ActiveRecord::Migration
  def change
    rename_table :groups, :kohorts
  end

end

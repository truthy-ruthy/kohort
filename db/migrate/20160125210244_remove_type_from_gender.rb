class RemoveTypeFromGender < ActiveRecord::Migration
  def change
    remove_column :genders, :type, :string
  end
end

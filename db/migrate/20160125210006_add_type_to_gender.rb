class AddTypeToGender < ActiveRecord::Migration
  def change
    add_column :genders, :type, :string
  end
end

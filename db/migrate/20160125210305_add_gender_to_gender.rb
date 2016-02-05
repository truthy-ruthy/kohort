class AddGenderToGender < ActiveRecord::Migration
  def change
    add_column :genders, :gender, :string
  end
end

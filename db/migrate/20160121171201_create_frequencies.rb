class CreateFrequencies < ActiveRecord::Migration
  def change
    create_table :frequencies do |t|
      t.string :how_often

      t.timestamps null: false
    end
  end
end

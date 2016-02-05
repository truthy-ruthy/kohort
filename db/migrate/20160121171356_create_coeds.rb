class CreateCoeds < ActiveRecord::Migration
  def change
    create_table :coeds do |t|
      t.string :mixed

      t.timestamps null: false
    end
  end
end

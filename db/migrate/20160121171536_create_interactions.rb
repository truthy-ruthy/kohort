class CreateInteractions < ActiveRecord::Migration
  def change
    create_table :interactions do |t|
      t.string :conversation_level

      t.timestamps null: false
    end
  end
end

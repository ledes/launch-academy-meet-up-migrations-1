class Meet_ups < ActiveRecord::Migration
  def change
    create_table :meet_ups do |table|
      table.string :name, null: false
      table.string :description, null: false
      table.string :place, null: false

      table.timestamps
    end

    add_index :meet_ups, [:name], unique: true
  end
end

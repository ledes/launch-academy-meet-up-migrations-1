class ChangeColumnsMeetups < ActiveRecord::Migration
  def up
    change_column :meetups, :description, :string, null: false, presence: true, limit: 250
    change_column :meetups, :title, :string, null: false, presence: true
    change_column :meetups, :location, :string, null: false, presence: true
  end
  def down
    change_column :meetups, :description, :string, null: false
    change_column :meetups, :title, :string, null: false
    change_column :meetups, :location, :string, null: false
  end
end

class UserMeetups < ActiveRecord::Migration
  def change
    create_table :user_meetups do |table|
      table.integer :meet_up_id, null: false
      table.integer :user_id, null: false
  end
end

class ChangeColumnsUserMeetups < ActiveRecord::Migration
  def up
    change_column :user_meetups, :user_id, :integer, null: false, numericality: true
    change_column :user_meetups, :meetup_id, :integer, null: false, numericality: true
  end

  def down
    change_column :user_meetups, :user_id, :integer, null: false
    change_column :user_meetups, :meetup_id, :integer, null: false
  end
end

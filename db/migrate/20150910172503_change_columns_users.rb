class ChangeColumnsUsers < ActiveRecord::Migration
  def up
    change_column :users, :username, :string, null: false, uniqueness: true
    change_column :users, :email, :string, null: false, uniqueness: true
  end

  def down
    change_column :users, :username, :string, null: false
    change_column :users, :email, :string, null: false
  end
end

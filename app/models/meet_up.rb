class Meet_up < ActiveRecord::Base
  #has_many :users, through: :user_meetups
  has_many :user_meetups
end

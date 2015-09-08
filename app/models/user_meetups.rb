class User_meetup < ActiveRecord::Base
  belongs_to :meet_ups
  belongs_to :users
 end

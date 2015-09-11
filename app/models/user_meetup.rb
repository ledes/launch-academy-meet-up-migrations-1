class UserMeetup < ActiveRecord::Base
  belongs_to :meetup
  belongs_to :user

  validates :user_id, null: false, numericality: true
  validates :meetup_id, null: false, numericality: true
end

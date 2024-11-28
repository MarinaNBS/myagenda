class Event < ApplicationRecord
  validates :title, :notes, :start_date, :end_date, :start_time, :end_time, presence: true
  belongs_to :user
  #has_many :family_members
end

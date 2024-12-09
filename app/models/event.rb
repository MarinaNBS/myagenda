class Event < ApplicationRecord
  validates :title, :notes, :start_date, :end_date,  presence: true
  belongs_to :user
  #has_many :family_members
end

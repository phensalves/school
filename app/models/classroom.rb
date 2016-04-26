class Classroom < ActiveRecord::Base
  has_many :students
  has_many :courses

  validates :student, presence: true
  validates :course, presence: true
  validates :entry_at, presence: true

  default_scope -> { order(updated_at: :desc) }
end

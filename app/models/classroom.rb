class Classroom < ActiveRecord::Base
  has_many :students
  has_many :courses

  validates :students_id, presence: true
  validates :courses_id, presence: true
  validates :entry_at, presence: true

  default_scope -> { order(updated_at: :desc) }
end

class Course < ActiveRecord::Base
  has_many :classrooms

  validates :name, presence: true
  validates :description, presence: true
  validates :status, presence: true

  default_scope -> { order(updated_at: :desc) }
end

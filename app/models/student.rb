class Student < ActiveRecord::Base
  belongs_to :classroom

  validates :name, presence: true
  validates :register_number, presence: true
  validates :status, presence: true

  default_scope -> { order(updated_at: :desc) }
end

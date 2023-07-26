class Lesson < ApplicationRecord
  has_many :user_lessons
  has_many :users, through: :user_lessons

  belongs_to :teacher
  belongs_to :category
end

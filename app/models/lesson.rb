class Lesson < ApplicationRecord
  has_many :user_lessons
  has_many :users, through: :user_lessons

<<<<<<< HEAD
  belongs_to :teacher, optional: true
  belongs_to :category, optional: true
=======
  belongs_to :teacher
  belongs_to :category
>>>>>>> 8188f12f775dad8f9da810427d43141528d24324
end

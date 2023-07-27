class ApplicationController < ActionController::API
  def api
    users = User.select(
      'id',
      'name',
      'furigana',
      'attend',
    )

    lessons = Lesson.joins(:teacher).select(
      'lessons.id',
      'lessons.name',
      'teachers.name as teacher_name'
    )

    render :json => {
      users: users,
      lessons: lessons
    }
  end
end

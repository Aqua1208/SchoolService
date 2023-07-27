class UsersController < ApplicationController
  def update_attend
    user = User.find(params[:id])
    user.update(attend: params[:attend])

    render json: user
  end

  def update_all_attend
    User.update_all(attend: true)

    render json: { message: '全てのユーザーを出席状態に更新しました。' }
  end

  def update_all_absent
    User.update_all(attend: false)

    render json: { message: '全てのユーザーを欠席状態に更新しました。' }
  end
end

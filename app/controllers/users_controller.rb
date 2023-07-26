class UsersController < ApplicationController
  def api
    users = User.all

    render json: users
  end
end

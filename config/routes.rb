Rails.application.routes.draw do
  get "api" => "application#api"

  patch 'users/attendall' => 'users#update_all_attend' # 全てのユーザーを出席状態に更新するためのルート
  patch 'users/absentall' => 'users#update_all_absent'

  patch "users/:id" => "users#update_attend"
end

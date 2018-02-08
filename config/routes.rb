Rails.application.routes.draw do

  devise_for :admins,controllers: {
                      registrations: 'admins/registrations',
                      sessions: 'admins/sessions'
                      }
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :carts

  resources :people

  resources :items

  resources :categories, only: [:show]

  resources :deliveries, only: [:create]

  get "/introduction" => "people#introduction" #ユーザー側の生産者紹介ページ用
  get "/mypage" => "items#mypage"
  root 'items#mypage'
  get "/mypage_index" => "items#mypage_index" #管理者側のユーザー一覧画面表示用
  get "/item_show/:id" => "admin#item_show", as: "admin_item_show"
  get "/user_show/:id" => "admin#user_show", as: "admin_user_show"

  resources :questions, only: [:index, :new, :create, :destroy]
end

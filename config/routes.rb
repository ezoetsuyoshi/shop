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

  resources :categories, only: [:show,:new,:create,:update,:destroy]

  resources :deliveries, only: [:create,:new,:index]

  resources :records, only: [:update]

  get "/introduction" => "people#introduction" #ユーザー側の生産者紹介ページ用
  get "/mypage" => "items#mypage"
  get "/soft_delete" => "items#soft_delete"
  get "/admin_delete_user/:id" => "admin#admin_delete_user"
  get "/admin_up_user/:id" => "admin#admin_up_user"
  root 'items#mypage'
  get "/mypage_index" => "admin#mypage_index" #管理者側のユーザー一覧画面表示用
  get "/item_show/:id" => "admin#item_show", as: "admin_item_show"
  get "/user_show/:id" => "admin#user_show", as: "admin_user_show"
  get "/user_person/:id" => "people#user_person", as: "user_person"

  resources :questions, only: [:index, :new, :create, :destroy]
end

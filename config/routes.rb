# == Route Map
#
#                   Prefix Verb   URI Pattern                    Controller#Action
#         new_user_session GET    /users/sign_in(.:format)       users/sessions#new
#             user_session POST   /users/sign_in(.:format)       users/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)      users/sessions#destroy
#            user_password POST   /users/password(.:format)      devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)  devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
#                          PATCH  /users/password(.:format)      devise/passwords#update
#                          PUT    /users/password(.:format)      devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)        users/registrations#cancel
#        user_registration POST   /users(.:format)               users/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)       users/registrations#new
#   edit_user_registration GET    /users/edit(.:format)          users/registrations#edit
#                          PATCH  /users(.:format)               users/registrations#update
#                          PUT    /users(.:format)               users/registrations#update
#                          DELETE /users(.:format)               users/registrations#destroy
#                   styles GET    /styles(.:format)              styles#index
#                          POST   /styles(.:format)              styles#create
#                new_style GET    /styles/new(.:format)          styles#new
#               edit_style GET    /styles/:id/edit(.:format)     styles#edit
#                    style GET    /styles/:id(.:format)          styles#show
#                          PATCH  /styles/:id(.:format)          styles#update
#                          PUT    /styles/:id(.:format)          styles#update
#                          DELETE /styles/:id(.:format)          styles#destroy
#                     root GET    /                              pages#home
#               hypertexts GET    /hypertexts(.:format)          hypertexts#index
#                          POST   /hypertexts(.:format)          hypertexts#create
#            new_hypertext GET    /hypertexts/new(.:format)      hypertexts#new
#           edit_hypertext GET    /hypertexts/:id/edit(.:format) hypertexts#edit
#                hypertext GET    /hypertexts/:id(.:format)      hypertexts#show
#                          PATCH  /hypertexts/:id(.:format)      hypertexts#update
#                          PUT    /hypertexts/:id(.:format)      hypertexts#update
#                          DELETE /hypertexts/:id(.:format)      hypertexts#destroy
#

Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  resources :styles
  root to: "pages#home"

  # get '/users/sign_out', to: 'devise/sessions#destroy'

  resources :hypertexts

end

Rails.application.routes.draw do
  namespace :api do
    get 'mailboxer/send_message'
    get 'mailboxer/inbox'
    get 'mailboxer/trash'
  end
  devise_for :users
end

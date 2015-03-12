Rails.application.routes.draw do
  root 'welcome#show'

  if Rails.env.development?
    resource :dev
  end
end

Rails.application.routes.draw do
  namespace :api do
    get "/name_url" => "params#name"
    get "/number_url" => "params#guess"
  end
end

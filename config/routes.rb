Rails.application.routes.draw do
  namespace :api do
    get "/name_url" => "params#name"
    get "/number" => "params#guess"
    get "/url_segment_parameter/:name" => "params#segment"
    get "/guess_segment/:user_input" => "params#guess_segment"
  end
end

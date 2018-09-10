Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"



namespace :api do

get "/meeting_url" => "meetings#index"
# get "/first_meeting_url" "meetings#first_meeting_method"







  get "/speakers" => "speakers#index"

  get "/speakers/:id" => "speakers#show"

  post "/speakers" => "speakers#create"

  patch "speakers/:id" => "speakers#update"


  delete "speakers/:id" => "speakers#destroy"


  end
  end
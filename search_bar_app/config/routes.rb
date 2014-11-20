Rails.application.routes.draw do

  get "/quiz_images/1", to: "quiz_images#form_1"
  post "/quiz_images/1", to: "quiz_images#form_1_submit"
  get "/quiz_images/2", to: "quiz_images#form_2"
  post "/quiz_images/2", to: "quiz_images#form_2_submit"
  get "/quiz_images/3", to: "quiz_images#form_3"
  post "/quiz_images/3", to: "quiz_images#form_3_submit"
  get "/quiz_images/4", to: "quiz_images#form_4"
  post "/quiz_images/4", to: "quiz_images#form_4_submit"

end

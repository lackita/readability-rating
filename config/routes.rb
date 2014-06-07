ReadabilityRating::Application.routes.draw do
  root 'ratings#new'
  resources 'ratings'
end

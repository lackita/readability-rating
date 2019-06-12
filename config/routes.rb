ReadabilityRating::Application.routes.draw do
  root 'application#random'
  resources 'code_samples', except: ['new', 'create'] do
    resources 'ratings'
  end
end

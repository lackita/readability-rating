ReadabilityRating::Application.routes.draw do
  root 'application#random'
  resources 'code_samples' do
    resources 'ratings'
  end
end

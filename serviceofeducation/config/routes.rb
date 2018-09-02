Rails.application.routes.draw do
  get 'top' => 'home#top'
  get 'decision' => 'home#decision'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

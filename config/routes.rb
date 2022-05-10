JsonSchema::Engine.routes.draw do
  resources :schemas

  namespace :primitives do
    resources :arrays
    resources :objects do
      resources :properties
    end
  end

  namespace :keywords do
    resources :generics
  end
end

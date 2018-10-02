FenrirView::Engine.routes.draw do
  root to: "docs#index"

  # resources :styleguide, only: [:index, :show], path: FenrirView.configuration.styleguide_path
  get "styleguide/", to: "styleguide#index", as: "component_index"
  get "styleguide/:variant/:id", to: 'styleguide#show', as: 'components'

  get 'docs/:section(/:page)', to: 'docs#show', as: 'fenrir_docs'

  # Show components used by styleguide
  get 'system_components/:id', to: 'styleguide#show', as: 'system_components', defaults: { variant: 'system' }
end

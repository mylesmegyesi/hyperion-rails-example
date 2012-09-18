Testapp::Application.routes.draw do
  get    'people'           => 'people#index', as: 'people'
  post   'people'           => 'people#create', as: 'create_person'
  get    'people/new'       => 'people#new', as: 'new_person'
  get    'people/:key/edit' => 'people#edit', as: 'edit_person'
  get    'people/:key'      => 'people#show', as: 'show_person'
  put    'people/:key'      => 'people#update', as: 'update_person'
  delete 'people/:key'      => 'people#destroy', as: 'delete_person'
end

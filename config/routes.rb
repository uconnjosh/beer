Brews::Application.routes.draw do
 match('/types/', {:via => :get, :to => 'types#index'})
 match('/types', {:via => :post, :to => 'types#create'})
 match('/types/new', {:via => :get, :to => 'types#new'})
 match('/types/:id', {:via => :get, :to => 'types#show'})
 match('/types/:id/edit', {:via => :get, :to => 'types#edit'})
 match('/types/:id/', {:via => [:patch, :put], :to => 'types#update'})
 match('/types/:id/', {:via => :delete, :to => 'types#delete'})

 #### Brews ####

 match('/brews/', {:via => :get, :to => 'brews#index'})
 match('/brews/new', {:via => :get, :to => 'brews#new'})
 match('/brews', {:via => :post, :to => 'brews#create'})
 match('/brews/:id', {:via => :get, :to => 'brews#show'})
 match('/brews/:id/edit', {:via => :get, :to => 'brews#edit'})
 match('/brews/:id', {:via => [:patch, :put], :to => 'brews#update'})
 match('/brews/:id/', {:via => :delete, :to => 'brews#delete'})

 #### Customers ####
 match('/', {:via => :get, :to => 'customers#index'})
 match('/customers', {:via => :post, :to => 'customers#create'})
 match('/customers/:id', {:via => :get, :to => 'customers#show'})
end


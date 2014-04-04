Brews::Application.routes.draw do
 match('/types/', {:via => :get, :to => 'types#index'})
 match('/types', {:via => :post, :to => 'types#create'})
 match('/types/new', {:via => :get, :to => 'types#new'})
 match('/types/:id', {:via => :get, :to => 'types#show'})
 match('/types/:id/edit', {:via => :get, :to => 'types#edit'})
 match('/types/:id/', {:via => [:patch, :put], :to => 'types#update'})
 match('/types/:id/', {:via => :delete, :to => 'types#delete'})
end

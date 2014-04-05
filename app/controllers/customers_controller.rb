class CustomersController < ApplicationController
  def index
    @customers = Customer.all
    render('/customers/index.html.erb')
  end

  def create
    @customer = Customer.create(params[:customer])
    render('/customers/show.html.erb')
  end

  def show
    @customer = Customer.find(params[:id])
    render('/customers/show.html.erb')
  end
end

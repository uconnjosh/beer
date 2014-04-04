class BrewsController < ApplicationController
  def index
    @brews = Brew.all
    render('/brews/index.html.erb')
  end

  def new

    render('brews/new.html.erb')
  end

  def create
    @type = Type.find(params[:type_id])
    @brew = @type.brews.create(params[:brew])
    render('/brews/index.html.erb')
  end

  def show
    @brew = Brew.find(params[:id])
    render('/brews/show.html.erb')
  end

  def edit
    @brew = Brew.find(params[:id])
    render('/brews/edit.html.erb')
  end

  def update
    Brew.find(params[:id]).update(params[:brew])
    redirect_to('/brews/')
  end

  def delete
    @brew = Brew.find(params[:id])
    @brew.destroy
    redirect_to('/brews')
  end
end

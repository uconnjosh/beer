class TypesController < ApplicationController
  def index
    @types = Type.all
    render('types/index.html.erb')
  end

  def show
    @type = Type.find(params[:id])
    render('types/show.html.erb')
  end

  def new
     @type = Type.new(params[:type])
    render('types/new.html.erb')
  end

  def create
    @type = Type.new(params[:type])

    if @type.save
      redirect_to('/types')
    else
      render('types/new.html.erb')
    end
  end

  def edit
    @type = Type.find(params[:id])
    render('types/edit.html.erb')
  end

  def update
    Type.find(params[:id]).update(params[:type])
    redirect_to('/types/')
  end

  def delete
    @type = Type.find(params[:id])
    @type.destroy
    redirect_to('/types')
  end

end

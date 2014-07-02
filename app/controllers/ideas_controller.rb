class IdeasController < ApplicationController

  def show
    @ibook = Ibook.find_by_id(params['id'])
    @name = @ibook.name
    @idea = @ibook.idea
    render 'show'
  end
  
  def create
    i = Ibook.new
    i.name = params['name']
    i.idea = params['idea']
    i.save
    redirect_to "/ideas/#{ i.id }"
  end
  
  def edit
    @ibook = Ibook.find_by_id(params['id'])
  end
  
  def update
    i = Ibook.find_by_id(params['id'])
    i.name = params['name']
    i.idea = params['idea']
    i.save
    redirect_to "/ideas/#{ i.id }"
  end
  
  def destroy
    i = Ibook.find_by_id(params['id'])
    i.destroy
    redirect_to "/ideas/:id/destroy/<%= ibook.id %>"
  end
  
  def index
    @ideas = Ideas.all
  
  end
  
end


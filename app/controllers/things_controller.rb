class ThingsController < ApplicationController

#CREATE
  def new
    @thing = Thing.new
  end

  def create
    @thing = Thing.new(thing_params)
   
    if @thing.save(thing_params)
      redirect_to @thing
    else
      render 'new'
    end
  end

#READ
  def show
    @thing = Thing.find(params[:id])
  end

  def index
    @things = Thing.all
  end

#UPDATE
  def edit
    @thing = Thing.find(params[:id])
  end

  def update
    @thing = Thing.find(params[:id])

    if @thing.update(thing_params)
      redirect_to @thing
    else
      render 'edit'
    end
  end

#DELETE

private
  def thing_params
    params.require(:thing).permit(:date, :value)
  end

end

class ThingsController < ApplicationController
  def new
  end

  def create
    render plain: params[:thing].inspect
  end

end

class OnePlusController < ApplicationController

  def index
    @one_plus_specifications = Specification.where(phone_name: "One plus")
    @one_plus_specifications = @one_plus_specifications.order(created_at: :desc)
  end  

  def show
    @specification = Specification.find(params[:id])
  end 
end
class OnePlusController < ApplicationController

  def index
    @one_plus_specifications = Specification.all
    # @one_plus_specifications = Specification.where(phone_name: "One plus")
    @one_plus_specifications = @one_plus_specifications.order(created_at: :desc)
  end  

  def show
    @specification = Specification.find(params[:id])
    @model_folder = @specification.phone_name.downcase.gsub(' ', '_')
    @images = Dir.glob("app/assets/images/#{@model_folder}/*")
  end 
end
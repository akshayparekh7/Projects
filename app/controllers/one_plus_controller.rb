class OnePlusController < ApplicationController

  def index
    @one_plus_specifications = Specification.where(brand_name: "One Plus")
    @one_plus_specifications = @one_plus_specifications.order(launch_date: :desc)
    @index_images = Dir.glob("app/assets/images/index_images/one_plus/*")
  end  

  def show
    @specification = Specification.find(params[:id])
    @model_folder = @specification.phone_name.downcase.gsub(' ', '_')
    @images = Dir.glob("app/assets/images/#{@model_folder}/*")
  end 
end
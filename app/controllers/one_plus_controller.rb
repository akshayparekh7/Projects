class OnePlusController < ApplicationController

  # def index
  #   @specifications = Specification.all
  # end

  def index
    @specification = Specification.find_by phone_name: "One plus"
  end  
end
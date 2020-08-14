class OnePlusController < ApplicationController

  def index
    @one_plus_specifications = Specification.where(phone_name: "One plus")
  end  

  def show

  end  
end
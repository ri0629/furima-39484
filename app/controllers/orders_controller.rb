class OrdersController < ApplicationController
   def index
    @address = address.new
   end

   def create
    @address = address.new(order_params)

    binding.pry
   end





end

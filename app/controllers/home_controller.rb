class HomeController < ApplicationController
  def index
    @products = Product.all
    @message=Message.new
  end

  def prueba
    @message=Message.new
    @products = Product.all
  end

  def message
    @message=Message.new
  end
end

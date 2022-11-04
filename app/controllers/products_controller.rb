class ProductsController < ApplicationController
    def index
        @products = Products.all
    end

    def show
        @product = Products.find(params[:id])        
    end

    def new
        @product = Products.new
    end
end
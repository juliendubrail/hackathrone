class ProductsController < ApplicationController
    def index
        @products = Product.all.with_attached_photo.order(created_at: :desc)
    end

    def show
        @product = Product.find(params[:id])        
    end

    def new
        @product = Product.new
    end

    def create
        @product = Product.new(product_params)

        if @product.save
            redirect_to products_path, notice: 'Product added correctly'
        else
            render :new, status: :unprocessable_entity
        end

    end

    def edit
        @product = Product.find(params[:id])
    end

    def update
        @product = Product.find(params[:id])

        if @product.update(product_params)
            redirect_to products_path, notice: 'Details updated correctly'
        else
            render :edit, status: :unprocessable_entity
        end

    end


    def product_params
        params.require(:product).permit(:title, :description, :price, :photo, :category_id)
    end


end
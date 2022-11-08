class SaleProductsController < ApplicationController
  before_action :set_sale_product, only: %i[ add_product_to_cart ]

  def add_product_to_cart
    #añadir el producto pasado por parametro al carrito indicado (ver si this)
        # @saleproduct = SaleProduct.new(sale_params)
        @saleproduct = SaleProduct.new(@sale, @product)
    
        respond_to do |format|
          if @saleproduct.save
            format.html { redirect_to product_url(@saleproduct), notice: "Product was successfully added to cart." }
            format.json { render :product, status: :ok, location: @product }
          else
            format.html { render :product, status: :unprocessable_entity }
            format.json { render json: @saleproduct.errors, status: :unprocessable_entity }
          end
        end
  end

  private

    def set_sale_product
        @sale = Sale.find(params[:sale])
        @product = Product.find(params[:product])
        #VER SI ESTE METODO CUMPLE CON SU FUNCION CORRECTAMENTE
        puts "a1"
        puts @sale
        puts @product
    end
    
end

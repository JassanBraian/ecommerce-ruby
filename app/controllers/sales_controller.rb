class SalesController < ApplicationController
  before_action :set_sale, only: %i[ show edit update destroy ]

  before_action :set_sale_product, only: %i[ add_product_to_cart ]

  # GET /sales or /sales.json
  def index
    @sales = Sale.all
  end

  # GET /sales/1 or /sales/1.json
  def show
  end

  # GET /sales/new
  def new
    @sale = Sale.new
  end

  # GET /sales/1/edit
  def edit
  end

  # POST /sales or /sales.json
  def create
    @sale = Sale.new(sale_params)

    respond_to do |format|
      if @sale.save
        format.html { redirect_to sale_url(@sale), notice: "Sale was successfully created." }
        format.json { render :show, status: :created, location: @sale }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sales/1 or /sales/1.json
  def update
    respond_to do |format|
      if @sale.update(sale_params)
        format.html { redirect_to sale_url(@sale), notice: "Sale was successfully updated." }
        format.json { render :show, status: :ok, location: @sale }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sales/1 or /sales/1.json
  def destroy
    @sale.destroy

    respond_to do |format|
      format.html { redirect_to sales_url, notice: "Sale was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sale
      @sale = Sale.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sale_params
      @product = Product.find(params[:product])
      params.require(:sale, :product).permit(:total, :product_id)  #analizar si hace falta total pq puede ser campo calculado /aplicar update total resumen
    end

    def sale_product_params
      puts 'b1', params[:product_id]
      @prod3 = Product.find(params[:product_id])

      #params.require(:sale_product).permit(:sale, :product)
    end

    def set_sale_product
      @product = Product.find(params[:id])
    end

    # encarar con generate controller y de ahi utilizar el create... o no se, quizas ver bien como llamar al metodo que está en sale por alguna razon no lo encuentra!!
end

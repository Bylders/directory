class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  # GET /orders
  # GET /orders.json
  def aditem
    @orde = Order.find(params[:id])
    if @orde.prod_id
      @orde.prod_id = @orde.prod_id + "___" +Menu.find(params[:f_id]).name.to_s
    else
      @orde.prod_id = Menu.find(params[:f_id]).name.to_s
    end
    @orde.save!
    redirect_to edit_order_path(@orde)
  end
  def index
    @orders = Order.all
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
  end

  # GET /orders/new
  def new
    @food = Menu.all
    @order = Order.new
  end

  # GET /orders/1/edit
  def edit
    @food = Menu.all
    @order = Order.find(params[:id])
    @customer = Customer.find(@order.customer_id)
  end

  # POST /orders
  # POST /orders.json
  def create
    @food = Menu.all
    @order = Order.new(:customer_id => :c_id)

    respond_to do |format|
      if @order.save
        format.html { redirect_to @order, notice: 'Order was successfully created.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      #params.require(:order).permit(:customer_id, :product_id, :prod_id)
    end
end

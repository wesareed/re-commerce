class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # On sales page, show all orders that belong to current user
  def sales
    @orders = Order.all.where(seller: current_user).order("created_at DESC")
  end
  # On purchases page, show all purchases that belong to current user
  def purchases
    @orders = Order.all.where(buyer: current_user).order("created_at DESC")
  end

  # GET /orders/new
  def new
    @order = Order.new
    # Find listing id in url
    @listing = Listing.find(params[:listing_id])
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(order_params)

    # Find listing id in url
    @listing = Listing.find(params[:listing_id])

    # Seller of a listing is the same as the user who created it
    @seller = @listing.user

    # Order id is same as the listing id
    @order.listing_id = @listing.id

    # Buyer Id is equal to current signed in user
    @order.buyer_id = current_user.id

    # Link order and seller id
    @order.seller_id = @seller.id

    respond_to do |format|
      if @order.save
        format.html { redirect_to root_url, notice: 'Order was successfully created.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:address, :city, :state)
    end
end

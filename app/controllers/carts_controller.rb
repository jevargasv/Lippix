#class CartsController < ApplicationController
    #before_action :set_cart, only: [:show, :edit, :update, :destroy]

    # GET /carts
    # GET /carts.json
    #def index
        #@carts = Cart.all
    #end
      
    # GET /carts/1
    # GET /carts/1.json
    #def show
        #unless current_user.id == @cart.user.id
            #redirect_to root_path
        #end
    #end
      
    # GET /carts/new
    #def new
        #@cart = Cart.new
        #@listing = Listing.find(params[:listing_id])
    #end
      
    # GET /carts/1/edit
    #def edit
    #end
      
    #def order_complete
        #@cart = Cart.find(params[:cart_id])
        #@amount = (@cart.subtotal.to_f.round(2) * 100).to_i

        #Stripe.api_key = ENV['SECRET_KEY']
       
        #customer = Stripe::Customer.create(
            #:email => current_user.email,
            #:card => params[:stripeToken]
        #)
        #begin
        #charge = Stripe::Charge.create(
            #:customer => customer.id,
            #:amount => @amount,
            #:description => 'Rails Stripe customer',
            #:currency => 'usd'
        #)
        #flash[:notice] = "Thank you for shopping, come back soon!"
            #@cart.destroy
            #rescue Stripe::CardError => e
            #flash[:error] = e.message
            #redirect_to charges_path
        #end
          
          
    # POST /carts
    # POST /carts.json
    #def create
        #@cart = Cart.new(cart_params)
        #@listing = Listing.find(params[:listing_id])
        #@cart.listing_id = @listing.id
      
        #respond_to do |format|
            #if @cart.save
              #format.html { redirect_to @cart, notice: 'Cart was successfully created.' }
              #format.json { render :show, status: :created, location: @cart }
            #else
              #format.html { render :new }
              #format.json { render json: @cart.errors, status: :unprocessable_entity }
            #end
        #end
    #end
      
    # PATCH/PUT /carts/1
    # PATCH/PUT /carts/1.json
    #def update
        #respond_to do |format|
            #if @cart.update(cart_params)
              #format.html { redirect_to @cart, notice: 'Cart was successfully updated.' }
              #format.json { render :show, status: :ok, location: @cart }
            #else
              #format.html { render :edit }
              #format.json { render json: @cart.errors, status: :unprocessable_entity }
            #end
        #end
    #end
      
    # DELETE /carts/1
    # DELETE /carts/1.json
    #def destroy
        #@cart.destroy if @cart.id == session[:cart_id]
            #session[:cart_id] = nil
        #respond_to do |format|
            #format.html { redirect_to root_path, notice: 'Your cart is currently empty.' }
            #format.json { head :no_content }
        #end
    #end
      
    #private

    #def set_cart
        #@cart = Cart.find(params[:id])
    #end
          
    #def cart_params
        #params.require(:cart).permit(:listing_id, :quantity, :user_id)
    #end

#end
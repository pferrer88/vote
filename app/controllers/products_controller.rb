class ProductsController < ApplicationController
  before_filter :authenticate_user!
  # GET /products
  # GET /products.json
  def index
    @products = Product.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @products }
    end
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @product = Product.find(params[:id])
    @exchange = Exchange.new(:user_id => current_user,:product_id => @product )
    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @product }
    end
  end

  # # GET /products/new
  # # GET /products/new.json
  # def new
  #   @product = Product.new
  # 
  #   respond_to do |format|
  #     format.html # new.html.erb
  #     format.json { render :json => @product }
  #   end
  # end
  # 
  # # GET /products/1/edit
  # def edit
  #   @product = Product.find(params[:id])
  # end
  # 
  # # POST /products
  # # POST /products.json
  # def create
  #   @product = Product.new(params[:product])
  # 
  #   respond_to do |format|
  #     if @product.save
  #       format.html { redirect_to @product, :notice => 'Product was successfully created.' }
  #       format.json { render :json => @product, :status => :created, :location => @product }
  #     else
  #       format.html { render :action => "new" }
  #       format.json { render :json => @product.errors, :status => :unprocessable_entity }
  #     end
  #   end
  # end
  # 
  # # PUT /products/1
  # # PUT /products/1.json
  # def update
  #   @product = Product.find(params[:id])
  # 
  #   respond_to do |format|
  #     if @product.update_attributes(params[:product])
  #       format.html { redirect_to @product, :notice => 'Product was successfully updated.' }
  #       format.json { head :ok }
  #     else
  #       format.html { render :action => "edit" }
  #       format.json { render :json => @product.errors, :status => :unprocessable_entity }
  #     end
  #   end
  # end
  # 
  # # DELETE /products/1
  # # DELETE /products/1.json
  # def destroy
  #   @product = Product.find(params[:id])
  #   @product.destroy
  # 
  #   respond_to do |format|
  #     format.html { redirect_to products_url }
  #     format.json { head :ok }
  #   end
  # end
  
  def buy
    @product = Product.find(params[:id])
    quantity = params[:exchange][:quantity].to_i
    cost = quantity.to_i * @product.cost.to_i
    
    if current_user.points.to_i >= cost.to_i
      current_user.points -= cost.to_i
      @product.quantity -= quantity
      current_user.save!
      @product.save!
      params[:exchange][:user_id] = current_user.id
      params[:exchange][:product_id] = @product
      params[:exchange][:points] = @product.cost
      params[:exchange][:status] = "Procesando"
      @exchange = Exchange.new(params[:exchange])
      respond_to do |format|
        if @exchange.save
          format.html { redirect_to @product, :notice => 'Su compra fue realizada.' }
          format.json { render :json => @product, :status => :created, :location => @product }
        else
          format.html { render :action => "show" }
          format.json { render :json => @echange.errors, :status => :unprocessable_entity }
        end
      end
    else
      @exchange = Exchange.new(params[:exchange])
      flash[:error] = "No tienes suficientes puntos."
      render :action => "show"
    end
    
  end
  
  
end

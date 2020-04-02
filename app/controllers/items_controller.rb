class ItemsController < ApplicationController

  # GET: /items
  get "/items" do
    @items = Item.all
    erb :"/items/index"
  end

  # GET: /items/new
  get "/items/new" do
    erb :"/items/new"
  end

  # POST: /items
  post "/items" do
    @item = Item.create(:name => params[:name], 
      :category => params[:category], 
      :quantity => params[:quantity])
      #:store_id => session[:store_id])
    #if @item.save
      redirect "/items/#{@item.id}"
    #else
     # erb :"/items/new"     
    #end
  end
  # GET: /items/5
  get "/items/:id" do
    @item = Item.find(params[:id])
    erb :"/items/show"
  end

  # GET: /items/5/edit
  get "/items/:id/edit" do
    @item = Item.find(params[:id])
    erb :"/items/edit"
  end

  # PATCH: /items/5
  patch "/items/:id" do
    @item = Item.find(params[:id])
   # if logged_in?
      @item.update(params[:item])
      redirect to "/items/#{@item.id}"
    #else
    #  redirect to "/items"  
    #end
  end

  # DELETE: /items/5/delete
  delete "/items/:id" do
    @item = Item.find(params[:id])
    #if logged_in? && current_user.title == "admin"
      @item.destroy
    #  redirect to "/items"
    #else
      redirect to "/items"
    #end 
  end
end
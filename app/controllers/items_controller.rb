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
      :quantity => params[:quantity], 
      :store_id => params[:store_id])
    redirect to "/items/#{@item.id}"
  end

  # GET: /items/5
  get "/items/:id" do
    @item = Item.find_by_id(params[:id])
    erb :"/items/show"
  end

  # GET: /items/5/edit
  get "/items/:id/edit" do
    @item = Item.find_by_id(params[:id])
    erb :"/items/edit"
  end

  # PATCH: /items/5
  patch "/items/:id" do
    @item = Item.find_by_id(params[:id])
    if logged_in?
      @item.name = params[:name]
      @item.category = params[:category]
      @item.quantity = params[:quantity]
      @item.save
      redirect to "/items/#{@item.id}"
    else
      redirect to "/items"  
    end
  end

  # DELETE: /items/5/delete
  delete "/items/:id" do
    @item = Item.find_by(id: params[:id])
    if logged_in? && current_user.title == "admin"
      @item.delete
      redirect to "/items"
    else
      "Display error message here"
    end 
  end
end
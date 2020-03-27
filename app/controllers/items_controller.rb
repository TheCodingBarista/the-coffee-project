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
    @item.name = params[:name]
    @item.category = params[:category]
    @item.quantity = params[:quantity]
    binding.pry
    @item.save
    redirect to "/items/#{@item.id}"
  end

  # DELETE: /items/5/delete
  delete "/items/:id" do
    @item = Item.find_by_id(params[:id])
    @item.delete
    redirect to "/items"
  end
end

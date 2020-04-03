class ItemsController < ApplicationController

  # GET: /items
  get "/items" do
    if logged_in?
      @items = Item.all
      erb :"/items/index"
    else
      redirect to "/"
    end
  end

  # GET: /items/new
  get "/items/new" do
    @user = current_user
    erb :"/items/new"
  end

  # POST: /items
  post "/items" do
    if !logged_in?
      redirect "/"
    end

    if params[:name] != "" && params[:category] != "" && params[:quantity] != "" && current_user.title != "employee"
      @item = Item.create(:name => params[:name], 
        :category => params[:category], 
        :quantity => params[:quantity],
        :store_id => current_user.store_id)
      redirect "/items/#{@item.id}"
    else
      erb :"/items/new"     
    end
  end

  # GET: /items/5
  get "/items/:id" do
    if @item = Item.find(params[:id])
        erb :"/items/show"
    else
      redirect to "/items"
    end
  end

  # GET: /items/5/edit
  get "/items/:id/edit" do
    @item = Item.find(params[:id])
    erb :"/items/edit"
  end

  # PATCH: /items/5
  patch "/items/:id" do
    if logged_in?
      @item = Item.find(params[:id])
      @item.update(params[:item])
      redirect to "/items/#{@item.id}"
    else
      redirect to "/items"  
    end
  end

  # DELETE: /items/5/delete
  delete "/items/:id" do
    if logged_in? && current_user.title == "admin"
      @item = Item.find(params[:id])
      @item.destroy
      redirect to "/items"
    else
      redirect to "/items"
    end 
  end
end
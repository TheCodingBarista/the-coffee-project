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

    if params[:name] != "" && params[:item_category] != "" && params[:quantity] != "" && current_user.title != "employee"
      @item = Item.create(:name => params[:name], 
        :category => params[:item_category], 
        :quantity => params[:quantity],
        :store_id => current_user.store_id)
      redirect "/items/#{@item.id}"
    else
      erb :"/items/new"     
    end
  end

  # GET: /items/5
  get "/items/:id" do
    @item = Item.find(params[:id])
    if @item.store_id == current_user.store_id
      erb :"/items/show"
    else
      redirect to "/items"
    end
  end

  # GET: /items/5/edit
  get "/items/:id/edit" do
      @item = Item.find(params[:id])
      if logged_in? && @item.user == current_user
        erb :"/items/edit"
      else
        redirect to "/items"
      end
  end

  # PATCH: /items/5
  patch "/items/:id" do
      @item = Item.find(params[:id])
      if logged_in? && @item.user == current_user
        @item.update(params[:item])
        redirect to "/items/#{@item.id}"
      else
        redirect to "/items"  
      end
  end

  # DELETE: /items/5/delete
  delete "/items/:id" do
      @item = Item.find(params[:id])
      if loggedIn? && @item.user == current_user
        @item.destroy
        redirect to "/items"
      else
        redirect to "/items"
      end 
  end
end
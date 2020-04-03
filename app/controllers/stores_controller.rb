class StoresController < ApplicationController

  # GET: /stores
  get "/stores" do
    @stores = Store.all
    erb :"/stores/index"
  end

  # GET: /stores/new
  get "/stores/new" do
    erb :"/stores/new"
  end

  # POST: /stores
  post "/stores" do
    if !logged_in?
      redirect "/"
    end
  end

  # GET: /stores/5
  get "/stores/:id" do
    @store = Store.find(params[:id])
    if @store.id != current_user.store_id  
      redirect to "/stores"
    else
      erb :"/stores/show"
    end
  end

  # GET: /stores/5/edit
  get "/stores/:id/edit" do
    erb :"/stores/edit"
  end

  # PATCH: /stores/5
  patch "/stores/:id" do
    redirect "/stores/:id"
  end

  # DELETE: /stores/5/delete
  delete "/stores/:id/delete" do
    redirect "/stores"
  end
end

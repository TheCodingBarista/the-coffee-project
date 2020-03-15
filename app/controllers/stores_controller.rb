class StoresController < ApplicationController

  # GET: /stores
  get "/stores" do
    erb :"/stores/index.html"
  end

  # GET: /stores/new
  get "/stores/new" do
    erb :"/stores/new.html"
  end

  # POST: /stores
  post "/stores" do
    redirect "/stores"
  end

  # GET: /stores/5
  get "/stores/:id" do
    erb :"/stores/show.html"
  end

  # GET: /stores/5/edit
  get "/stores/:id/edit" do
    erb :"/stores/edit.html"
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

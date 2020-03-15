class UserItemsController < ApplicationController

  # GET: /user_items
  get "/user_items" do
    erb :"/user_items/index.html"
  end

  # GET: /user_items/new
  get "/user_items/new" do
    erb :"/user_items/new.html"
  end

  # POST: /user_items
  post "/user_items" do
    redirect "/user_items"
  end

  # GET: /user_items/5
  get "/user_items/:id" do
    erb :"/user_items/show.html"
  end

  # GET: /user_items/5/edit
  get "/user_items/:id/edit" do
    erb :"/user_items/edit.html"
  end

  # PATCH: /user_items/5
  patch "/user_items/:id" do
    redirect "/user_items/:id"
  end

  # DELETE: /user_items/5/delete
  delete "/user_items/:id/delete" do
    redirect "/user_items"
  end
end

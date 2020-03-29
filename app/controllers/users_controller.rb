class UsersController < ApplicationController

  # GET: /users
  get "/users" do
    @users = User.all
    erb :"/users/index"
  end

  # GET: /users/new
  get "/users/new" do
    erb :"/users/new"
  end

  # POST: /users
  post "/users" do
      @user = User.create(params)     
      #@store = Store.find_by(id: params[:store_id])
      #@user.store_id = @store.id
      redirect "/users/#{@user.id}"
  end

  get "/login" do
    if logged_in?
      redirect "/users/#{@user.id}" 
    else
      erb :"/users/login"
    end
  end

  post "/login" do
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect "/users/#{@user.id}"  
    else
      redirect "/login"
    end
  end

  # GET: /users/5
  get "/users/:id" do
    @user = User.find_by(id: params[:id])
    erb :"/users/show"
  end

  get "/logout" do
    if logged_in?
      session.clear
    end 
      redirect "/"
  end

  # GET: /users/5/edit
  get "/users/:id/edit" do
    erb :"/users/edit"
  end

  # PATCH: /users/5
  patch "/users/:id" do
    redirect "/users/:id"
  end

  # DELETE: /users/5/delete
  delete "/users/:id" do
    @user = User.find_by(id: params[:id])
    @user.destroy
    session.clear
    redirect "/"
  end
end
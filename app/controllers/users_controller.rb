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
    raise params.inspect
    if params[:username] != "" && params[:password] != ""
      @user = User.create(params)      
      redirect "/users/#{@user.id}"
    end
  end

  get "/login" do
    erb :"/users/login"
  end

  post "/login" do
    @user = User.find_by(username: params[:username])
    if @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect "users/#{@user.id}"  
    else
      "Error message here"
      redirect "/users/new"
    end
  end

  # GET: /users/5
  get "/users/:id" do
    @user = User.find_by(id: params[:id])
    erb :"/users/show"
  end

  get "/users/logout" do
    session.clear
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
  delete "/users/:id/delete" do
    redirect "/users"
  end
end

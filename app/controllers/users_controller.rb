class UsersController < ApplicationController

  # GET: /users
  get "/users" do
    if logged_in?
      @users = User.all
      erb :"/users/index"
    else
      redirect to "/"
    end
  end

  # GET: /users/new
  get "/users/new" do
    erb :"/users/new"
  end

  # POST: /users
  post "/users" do
    if params[:username] != "" && params[:username] != "" && params[:password] != "" && params[:store_id] != "" && params[:name] != ""
      @user = User.new(:username => params[:username],
        :title => params[:title],
        :password => params[:password],
        :store_id => params[:user_store_id],
        :name => params[:name])
      @user.valid?
      @user.save
      session[:user_id] = @user.id
      redirect to "/users/#{@user.id}"
    else
      redirect to "/users/new"    
    end
  end

  get "/login" do
    if logged_in?
      redirect to "/users/#{current_user.id}" 
    else
      erb :"/users/login"
    end
  end

  post "/login" do
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect to "/users/#{@user.id}"  
    else
      redirect to "/login"
    end
  end

  # GET: /users/5
  get "/users/:id" do
    @stores = Store.all
    if logged_in?
      @user = User.find(params[:id])
      erb :"/users/show"
    else
      redirect to "/login"
    end
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
    @user = User.find(params[:id])
    @user.destroy
    session.clear
    redirect "/"
  end
end
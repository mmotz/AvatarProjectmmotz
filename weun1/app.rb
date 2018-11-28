require 'sinatra'
require 'sinatra/activerecord'
require './config/environments' #database configuration
require './models/user'
require './models/story'
require './models/avatar'

enable :sessions

set :port, 8080
set :static, true
set :bind, '0.0.0.0'

#index controllers
get '/' do
    erb :index
end

#user controllers
post '/submit_user' do
	@user = User.new(params[:user])
	if @user.save
		redirect '/users'
	else
		"Sorry, there was an error!"
	end
end

get '/create_user' do
	erb :create_user
end

get '/users' do
	@users = User.all
	erb :users
end

#tweet controllers
post '/submit_story' do
	@story = Story.new(params[:story])
	if @story.save
		redirect '/stories'
	else
		"Sorry, there was an error!"
	end
end

get '/create_story' do
	erb :create_story
end

get '/stories' do
	@stories = Story.all
	@users = User.all
	@avatars = Avatar.all
	erb :stories
end

#connection (followers) controllers
post '/submit_avatar' do
	@avatar = Avatar.new(params[:avatar]) #not valid and compatible datatypes
	if @avatar.save
		redirect '/avatars'
	else
		"Sorry, there was an error!"
	end
end

get '/create_avatar' do
	erb :create_avatar
end

get '/avatars' do
	@avatars = Avatar.all
	@users = User.all
	erb :avatars
end

#Registrations 
get '/registrations/signup' do
    erb :'/registrations/signup'
end

post '/registrations' do
	@user = User.new(params[:user])
	if @user.save
		redirect '/sessions/login'
	else
		"Sorry, there was an error!"
	end
end

#sessions and login management
get '/sessions/login' do
	erb :'/sessions/login'
end

post '/sessions' do
	@user = User.find_by(email: params["email"], password: params["password"])
	if @user != nil
		session[:id] = @user.id
		redirect '/users/home'
	else
		redirect 'sessions/login'
	end
end

get '/sessions/logout' do
	session.clear
	redirect '/'
end

#users home 
get '/users/home' do
  @user = User.find(session[:id])
  @followers = Avatar.where("follower_id = ?", @user.id)
  
  erb :'/users/home'
end
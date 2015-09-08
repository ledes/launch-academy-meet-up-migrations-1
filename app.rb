require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/flash'
require 'omniauth-github'
require 'pry'

require_relative 'config/application'
set :environment, :development

Dir['app/**/*.rb'].each { |file| require_relative file }

helpers do
  def current_user
    user_id = session[:user_id]
    @current_user ||= User.find(user_id) if user_id.present?
  end

  def signed_in?
    current_user.present?
  end
end

def set_current_user(user)
  session[:user_id] = user.id
end

def authenticate!
  unless signed_in?
    flash[:notice] = 'You need to sign in if you want to do that!'
    redirect '/'
  end
end

get '/' do
  @title = 'Meet ups in Space'
  @meet_ups = Meetup.all.order(:title)
  erb :index
end

get '/:id' do
  @meet_up = Meetup.all.find_by id: params['id']
  erb :show
end

post '/' do
  var = Meetup.create(
    title: params[:title],
    description: params[:description],
    location: params[:location]
    )
  redirect "/#{var.id}"
end

get '/auth/github/callback' do
  auth = env['omniauth.auth']

  user = User.find_or_create_from_omniauth(auth)
  set_current_user(user)
  flash[:notice] = "You're now signed in as #{user.username}!"

  redirect '/'
end

get '/sign_out' do
  session[:user_id] = nil
  flash[:notice] = "You have been signed out."

  redirect '/'
end

get '/example_protected_page' do
  authenticate!
end


get '/:id/update' do
  @meet_up = Meetup.all.find_by id: params['id']
  erb :update
end


patch "/:id/update" do
 new_title = params["title"]
 new_description = params["description"]
 new_location = params["location"]

 @meet_up = Meetup.all.find_by id: params['id']
 @meet_up.update_attribute(title: new_title, description: new_description, location: new_location)

  redirect "/"
end

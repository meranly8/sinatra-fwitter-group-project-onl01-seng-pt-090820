require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    erb :homepage
  end

  get '/signup' do
    erb :"/users/signup"
  end

  post '/signup' do
      # if params[:user][:username] == ""
      # redirect '/signup'
      # else
        user = User.create(params[:user])
        redirect "/tweets"
      # end

  end


helpers do
  def is_logged_in?
    !!@current_user
  end

  def current_user
    @current_user ||= User.find_by(id: params[:user_id])
  end
end



end

class UsersController < ApplicationController
    configure do
        enable :sessions
        set :session_secret, 'motmiiitc'
    end
    


end

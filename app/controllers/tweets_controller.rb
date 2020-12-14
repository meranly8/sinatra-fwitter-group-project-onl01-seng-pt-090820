class TweetsController < ApplicationController
    get '/tweets' do
        user = User.find_by_id(params[:id])
        if user.is_logged_in?
            @tweets = Tweet.all
            @users = User.all
            erb :"/tweets/index"
        else
            redirect '/signup'
        end
    end

    get '/tweets/new' do
        erb :"/tweets/new"
    end

    post '/tweets' do
        @tweet = Tweet.create(params[:tweet])
        redirect "/tweets/#{@tweet.id}"
    end

    get '/tweets/:id' do
        @tweet = Tweet.find_by_id(params[:id])
        erb :"/tweets/show"
    end



end

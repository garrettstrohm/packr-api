class UserController < Sinatra::Base
    set :default_content_type, 'application/json'

    get '/users/:username' do
        user = User.find_by(username: params[:username])
        user.to_json
      end

    post '/users' do
        new_user = User.create(username: params[:username], first_name: params[:first_name], last_name: params[:last_name], email: params[:email], phone: params[:phone])
        new_user.to_json
    end

end
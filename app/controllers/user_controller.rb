class UserController < Sinatra::Base
    set :default_content_type, 'application/json'

    
    get '/users/:username' do
        user = User.find_by(username: params[:username])
        user.to_json
      end

      get '/users/user/:id' do
        user = User.find_by(id: params[:id])
        user.to_json
    end

    post '/users' do
        find_user = User.find_by(username: params[:username])
        if find_user == nil
        new_user = User.create(username: params[:username], first_name: params[:first_name], last_name: params[:last_name], email: params[:email], phone: params[:phone])
        new_user.to_json
        else 
            "This username already exists".to_json
        end
    end

end
class AdventureController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/adventures/:id" do
    adventures = Adventure.where(trip_id: params[:id])
    adventures.to_json(include: :user)
  end

  get "/adventures/myadventures/:id" do
    adventures = Adventure.where(user_id: params[:id])
    adventures.to_json(include: {trip: {include: :trip_items}})
  end

  get "/adventures/adventure/:id" do 
    adventure = Adventure.find(params[:id])
    adventure.to_json(include: {trip: {include: :trip_items}})
  end

  delete "/adventures/:id" do
    adventure = Adventure.find(params[:id])
    adventure.destroy
    adventure.to_json
  end

  post "/adventures" do
    user = User.find_by(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], phone: params[:phone])
    adventure = Adventure.create(user_id: user.id, trip_id: params[:trip_id])
    adventure.to_json(include: :user)
  end

end
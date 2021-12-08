class AdventureController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/adventures/:id" do
    adventures = Adventure.where(trip_id: params[:id])
    adventures.to_json(include: :user)
  end

  delete "/adventures/:id" do
    adventure = Adventure.find(params[:id])
    adventure.destroy
    adventure.to_json
  end

end
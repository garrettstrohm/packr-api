class TripController < Sinatra::Base
    set :default_content_type, 'application/json'
    
    get "/trips/:id" do
        Trip.where(user_id: params[:id]).to_json
    end

    post "/trips" do
        Trip.create(title: params[:title], date: params[:date], description: params[:description], user_id: params[:user_id]).to_json
    end

    delete "/trips/trip/:id" do
        trip = Trip.find(params[:id])
        trip.destroy
        trip.to_json
    end

    get "/trips/trip/:id" do
        trip = Trip.find(params[:id])
        trip.to_json(include: :trip_items)
    end

end
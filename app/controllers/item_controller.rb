class ItemController < Sinatra::Base
    set :default_content_type, 'application/json'
    
    get "/tripitems" do 
        items = TripItem.all
        items.to_json
    end
    
    post "/tripitems" do
        TripItem.create(name: params[:name], description: params[:description], quantity: params[:quantity], trip_id: params[:trip_id]).to_json
    end

    patch "/tripitems/:id" do
        item = TripItem.find(params[:id])
        item.update(quantity: params[:quantity])
        item.to_json
    end
    
    delete "/tripitems/:id" do
        item = TripItem.find(params[:id])
        item.destroy
        item.to_json
    end


  end
  
class Adventure < ActiveRecord::Base
    belongs_to :user
    belongs_to :trip

    def find_trip_host
        trip = Trip.find(self.trip_id)
        user = User.find(trip.user_id)
        user
    end

end
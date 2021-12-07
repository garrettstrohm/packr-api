class User < ActiveRecord::Base
    has_many :trips, foreign_key: "organizer_id"
    has_many :trip_items, through: :trips
    has_many :adventures
end
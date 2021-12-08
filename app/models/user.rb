class User < ActiveRecord::Base
    has_many :trips
    has_many :trip_items, through: :trips
    has_many :adventures
end



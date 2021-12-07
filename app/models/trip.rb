class Trip < ActiveRecord::Base
    has_many :trip_items
    belongs_to :user
    has_many :items, through: :trip_items
    has_many :adventures
end
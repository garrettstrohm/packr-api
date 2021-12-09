class Trip < ActiveRecord::Base
    has_many :trip_items
    belongs_to :user
    has_many :adventures, dependent: :destroy
end
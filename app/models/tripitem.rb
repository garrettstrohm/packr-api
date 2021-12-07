class TripItem < ActiveRecord::Base
    has_many :items
    belongs_to :trip

    def item_desc
        Item.all.find(self.item_id)
    end
end
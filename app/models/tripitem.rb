class TripItem < ActiveRecord::Base
    belongs_to :trip

    def item_desc
        Item.all.find(self.item_id)
    end
end
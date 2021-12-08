class Adventure < ActiveRecord::Base
    belongs_to :user
    belongs_to :trip

    def find_users_adventures(user_id)
        adventures = Adventure.where(user_id: user_id)
        
    end

end
class Membership < ApplicationRecord 
    belongs_to :client 
    belongs_to :gym 
    validates :membership_charge, presence: true
    validates :gym_id, presence: true
    validates :client_id, presence: true 
  

    validate :only_unique_memberships

    def only_unique_memberships
        if Client.find(self.client_id).gyms.include?(self.gym)
            errors.add(:client_id, "Client can only have one membership to a gym")
        end 
    end 
end 
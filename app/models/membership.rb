class Membership < ApplicationRecord 
    belongs_to :client 
    belongs_to :gym 

    include ActiveModel::Validations
    validates_with Validator

    # def client_only_has_unique_memberships
    #     membership = Membership.find_by(client_id: client.id)
    #     if membership.gym == new_gym
    #         errors.add(:client_id, "Client can only have one membership to a gym")
    #     end 
    # end 
end 
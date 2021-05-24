class Validator < ActiveModel::Validator
    def validate(record)
        memberships = Membership.where("client_id: ?", record.client_id)

        if memberships.exist? 
            exisiting = memberships.find {|membership| membership.record.gym_id}
            if existing?  
            errors.add(:client_id, "Client can only have one membership to a gym")
            end 
        end 
       
    end 
end 
class Makeup < ApplicationRecord
    belongs_to: Review
    
    validates_presence_of:name, :colour,:type


end



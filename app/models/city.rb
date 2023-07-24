class City < ApplicationRecord    
    has_many :kindergartens , dependent: :restrict_with_exception
end

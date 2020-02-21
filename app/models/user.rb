class User < ApplicationRecord

    has_many :objectives
    has_secure_password
    
end

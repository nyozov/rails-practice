class User < ApplicationRecord
    has_secure_password
    has_many :foods

    validates :email, presence: true, uniqueness: true


end

class User < ApplicationRecord
    has_secure_password
    has_many :requess, dependent: :destroy
end

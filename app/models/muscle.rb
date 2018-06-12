class Muscle < ApplicationRecord
    has_secure_password
    has_many :requests, dependent: :destroy
end
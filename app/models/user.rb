class User < ApplicationRecord
    validates :email, presence: true, format: {with: /\A[A-Z0-9+_.-]+@[A-Z0-9.-]+\Z/, message: "must be a valid email address"}
end

class Users < ApplicationRecord
    # adds virtual attributes for authentication
    has_secure_password
    # validates email
    validates :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: 'Invalid email' }
    # associates user with ride history
    has_many :rides, class_name: :Ride, foreign_key: :user_id
 end

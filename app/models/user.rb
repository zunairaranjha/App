class User < ApplicationRecord
attr_accessor :token

    has_secure_password
     # validates email
     validates :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: 'Invalid email' }
     has_many :posts, dependent: :destroy

    end

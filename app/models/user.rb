class User < ApplicationRecord
   has_secure_password
    validates :password, length: {minimum:5}, if: -> {new_record? || changes[:password_digest]}
    validates :name,presence: true,length: {maximum:100} unipuness: true
    validates :email,presence: true, unipuness: true

    has_many :boards, dependent: :destroy
    
end

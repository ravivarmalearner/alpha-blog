class User < ActiveRecord::Base
    has_many :articles
    validates :username,
        presence: true, 
        uniqueness: true, 
        length: {minimum: 3, maximum: 20}
    validates :email,
        presence: true
end
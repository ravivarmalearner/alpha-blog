class User < ActiveRecord::Base
    has_many :articles
    validates :username,
        presence: true, 
        uniqueness: {case_sensitive: false}, 
        length: {minimum: 3, maximum: 20}
    # VALID_EMAIL_REGEX = 
    validates :email,
        presence: true,
        uniqueness: {case_sensitive: false},
        length: {maximum: 50}
        # format: {with:  VALID_EMAIL_REGEX}
end
class User < ApplicationRecord

    has_many :posts, dependent: :delete_all
    has_many :comments, through: :post
    accepts_nested_attributes_for :posts, allow_destroy: true 
    accepts_nested_attributes_for :comments, allow_destroy: true 

end

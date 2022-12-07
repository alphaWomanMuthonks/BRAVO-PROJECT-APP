class User < ApplicationRecord
    has_many :projects
    has_many :reviews, through: :projects
end

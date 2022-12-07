class Project < ApplicationRecord
    belongs_to :User
    has_many :reviews, dependent: :destroy
end

class ReviewSerializer < ActiveModel::Serializer
  attributes :name, :description
  belongs_to :project
end

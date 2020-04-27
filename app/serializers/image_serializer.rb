class ImageSerializer < ActiveModel::Serializer
  attributes :id, :url, :likes
  has_many :comments
end

class SourceSerializer < ActiveModel::Serializer
  attributes :id, :link, :title
  has_many :notes
  has_many :topics
end

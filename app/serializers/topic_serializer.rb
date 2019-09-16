class TopicSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :projects
  has_many :sources
end

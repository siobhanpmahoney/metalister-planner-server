class TagSerializer < ActiveModel::Serializer
  attributes :id, :key, :value
  has_many :tasks
end

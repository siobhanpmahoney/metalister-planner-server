class TaskSerializer < ActiveModel::Serializer
  attributes :id, :title, :details, :priority, :is_roadblocker
  has_one :project
  has_many :tags
end

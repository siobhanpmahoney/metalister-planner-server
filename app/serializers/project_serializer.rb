class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :repo_link, :status
  has_many :tasks
  has_many :topics
  has_many :notes
end

class NoteSerializer < ActiveModel::Serializer
  attributes :id, :title, :content
  has_one :project
  has_many :sources
end

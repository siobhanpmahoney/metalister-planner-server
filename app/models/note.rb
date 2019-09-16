class Note < ApplicationRecord
  belongs_to :project

  has_many :source_notes
  has_many :sources, through: :source_notes
end

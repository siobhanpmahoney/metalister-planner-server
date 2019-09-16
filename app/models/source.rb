class Source < ApplicationRecord
    has_many :topic_sources
    has_many :topics, through: :topic_sources

    has_many :source_notes
    has_many :notes, through: :source_notes
end

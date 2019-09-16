class Topic < ApplicationRecord
    has_many :topic_sources
    has_many :sources, through: :topic_sources

    has_many :topic_projects
    has_many :projects, through: :topic_projects
end

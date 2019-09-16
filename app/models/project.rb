class Project < ApplicationRecord
    has_many :tasks
    has_many :notes
    
    has_many :topic_projects
    has_many :topics, through: :topic_projects
end

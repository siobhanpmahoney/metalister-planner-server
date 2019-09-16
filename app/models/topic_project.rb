class TopicProject < ApplicationRecord
  belongs_to :topic
  belongs_to :project
end

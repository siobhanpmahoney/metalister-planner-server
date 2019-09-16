class TopicSource < ApplicationRecord
  belongs_to :topic
  belongs_to :source
end

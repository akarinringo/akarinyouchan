class TrainingTagRelation < ApplicationRecord
  belongs_to :training
  belongs_to :tag
end

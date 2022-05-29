class Tag < ApplicationRecord
    has_many :training_tag_relations, dependent: :destroy
    has_many :trainings, through: :training_tag_relations, dependent: :destroy
end

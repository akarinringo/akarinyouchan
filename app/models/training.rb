class Training < ApplicationRecord
    belongs_to :user
    mount_uploader :image, ImageUploader
    has_many :training_tag_relations, dependent: :destroy
    has_many :tags, through: :training_tag_relations, dependent: :destroy
end

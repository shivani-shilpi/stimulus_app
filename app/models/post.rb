class Post < ApplicationRecord
    belongs_to :student
    has_rich_text :content
    # has_many_attached :images
    has_many_attached :images do |attachable|
        attachable.variant :thumb, resize: "50x50"
    end
end

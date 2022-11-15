class PostImage < ApplicationRecord
  has_one_attached :image
  # 追記
  belongs_to :user
end

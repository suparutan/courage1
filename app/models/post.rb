class Post < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
belongs_to_active_hash :gender

def self.search(search)
  return Post.all unless search
  Post.where('name LIKE(?)',"%#{search}%")
  end
end

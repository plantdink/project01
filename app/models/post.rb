class Post < ApplicationRecord
  belongs_to :user, :optional => true
  has_many :comments, dependent: :destroy
  has_and_belongs_to_many :tags
end

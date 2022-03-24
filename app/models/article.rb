class Article < ApplicationRecord
  validates_presence_of :title :slug
end

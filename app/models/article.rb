class Article < ApplicationRecord
  has_many :keywords

  accepts_nested_attributes_for :keywords, reject_if: :all_blank, allow_destroy: true
end

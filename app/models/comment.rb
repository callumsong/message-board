class Comment < ActiveRecord::Base
  belongs_to :message

  accepts_nested_attributes_for :message
end

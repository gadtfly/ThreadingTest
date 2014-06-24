class Comment < ActiveRecord::Base
  acts_as_tree dependent: :destroy
end

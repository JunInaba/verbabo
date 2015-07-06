class ThreadBoard < ActiveRecord::Base
	validates :title, presence: true
    has_many :comments, dependent: :destroy, class_name: 'Comment'
end

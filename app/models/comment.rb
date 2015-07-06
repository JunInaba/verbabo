class Comment < ActiveRecord::Base
	belongs_to :thread_board, class_name: 'ThreadBoard'
	validates :name, presence: true
	validates :comment, presence: true

end

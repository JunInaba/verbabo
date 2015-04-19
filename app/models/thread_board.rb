class ThreadBoard < ActiveRecord::Base
	validates :title, presence: true
end

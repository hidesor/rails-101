class Group < ActiveRecord::Base
	validates :title, presence: true
	#has_many :posts

	#所以我們要設定當 group 刪除的時候，他所屬的 posts 也要跟著刪除
	has_many :posts, dependent: :destroy

    has_many :group_users
    has_many :members, through: :group_users, source: :user


	belongs_to :owner, class_name: "User", foreign_key: :user_id

	def editable_by?(user)
      user && user == owner
    end

end

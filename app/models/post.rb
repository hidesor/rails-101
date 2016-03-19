class Post < ActiveRecord::Base
	#belongs_to :group

	#Rails 的 Model 裡面有一個內建的 counter_cache 功能幫助你記錄
    #只要設定好 counter_cache: :posts_count <== (你剛剛建立的欄位名稱)
	belongs_to :group, counter_cache: :posts_count
	validates :content, presence: true

    belongs_to :author, class_name: "User", foreign_key: :user_id
 
    scope :recent, -> { order("updated_at DESC") }

    def editable_by?(user)
     user && user == author
    end
end

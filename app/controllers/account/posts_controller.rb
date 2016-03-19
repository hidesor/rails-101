class Account::PostsController < ApplicationController
 before_action :authenticate_user!

 def index
   #@posts = current_user.posts

   #運作邏輯是 => 修改時間 (updated_at) 用 倒序排列 (DESC)
   #@posts = current_user.posts.order("updated_at DESC")

   #排序放到 app/models/post.rb
   @posts = current_user.posts.recent
 end
end

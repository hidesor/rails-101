module PostsHelper
  def render_post_content(post)
  	#需要內容斷行
  	#simple_format(post.content)

  	#只顯示頭一百字
    simple_format(truncate(post.content, lenth: 100))
  end
end

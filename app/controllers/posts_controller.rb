class PostsController < ApplicationController
  def index 
    @posts = Post.all.order(id: "DESC")
  end

  def create
    Post.create(content: params[:content])
    redirect_to action: :index
  end

  def checked
    post = Post.find(params[:id])
    if post.checked
      post.update(checked: false)
    else 
      post.update(checked: true)
    end

    item = Post.find(params[:id])
    render json: {post: item}
  end
  
end

# Post.create(content: params[:content])
# の左右のcontentは一致させないと空欄で保存されてしまった（net.html.erbファイルも一緒に変更していても）
# なのでどちらもきちんと保存するカラム名を記載しよう。

# GitHub練習用の記載
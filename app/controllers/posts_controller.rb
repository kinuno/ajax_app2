class PostsController < ApplicationController
  def index 
    @posts = Post.all
  end

  def new
  end

  def create
    Post.create(content: params[:content])
  end
  
end

# Post.create(content: params[:content])
# の左右のcontentは一致させないと空欄で保存されてしまった（net.html.erbファイルも一緒に変更していても）
# なのでどちらもきちんと保存するカラム名を記載しよう。

# GitHub練習用の記載
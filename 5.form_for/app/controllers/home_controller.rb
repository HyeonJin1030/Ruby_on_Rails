class HomeController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.new #테이블에 한 행 추가
    post.title = params[:post][:title] #form_tag와 차이: 두번 깜
    post.content = params[:post][:content]
    post.save #테이블에 써준 내용을 저장
    redirect_to '/home/index'
  end
  
  def destroy
    Post.destroy_all
    redirect_to '/home/index'
  end
  
  def destroy_id
    post = Post.find(params[:post_id])
    post.destroy
    redirect_to '/home/index'
  end
  
  def edit
    @post = Post.find(params[:post_id])
  end
  
  def update
    post = Post.find(params[:post_id])
    post.title = params[:post][:title]
    post.content = params[:post][:content]
    post.save
    redirect_to '/home/index'
  end

end
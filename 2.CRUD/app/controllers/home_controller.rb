class HomeController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
  end
 #여기서 post 인스턴스 변수로 만든 이유?
  def create
    post = Post.new #테이블에 한 행 추가
    post.title = params[:post_title]
    post.content = params[:post_content]
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
    post.title = params[:post_title]
    post.content = params[:post_content]
    post.save
    redirect_to '/home/index'
  end

end
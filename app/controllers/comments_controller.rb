class CommentController < ApplicationController
  def index
    @post = Post.find(params[:post_id])
    @comments = @post.comments
  end

  def show
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
  end

  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    post.comments.create(song_params)

    redirect_to post
  end

  def edit
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
  end

  def update
    post = Post.find(params[:post_id])
    comment = post.comments.find(params[:id])
    comment.update(comment_params)

    redirect_to post_comment_path
  end

  def destroy
    post = Post.find(params[:post_id])
    post.comments.destroy(params[:id])
    redirect_to posts_url
  end

  protected
  def comment_params
    params.require(:comment).permit(:username, :body, :location, :email_address, :age)
  end
end

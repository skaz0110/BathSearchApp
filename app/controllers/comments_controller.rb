class CommentsController < ApplicationController

  def index
    @post = Post.find(params[:post_id])
    
    # 投稿詳細に関連付けてあるコメントを全取得
    @comments = @post.comments.order(created_at: :desc)
    @comment = current_user.comments.new  
  end

  def create

    @comment = current_user.comments.new(comment_params)  
    
    if @comment.save

      # 投稿の詳細ページへ戻る
      redirect_to post_comments_path(params[:post_id])
    else

      # 一つ前のページへ戻る
      redirect_back(fallback_location: root_path)
    end
  end
  
  
  
  private
  def comment_params
    params.require(:comment).permit(:content,:post_id)
  end
  
end

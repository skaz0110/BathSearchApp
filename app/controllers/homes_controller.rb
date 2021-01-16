class HomesController < ApplicationController
  def index
    @posts = Post.all
  end
  def show
      
    @post = Post.find(params[:id])
    @comments = Comment.order(:id)
    if user_signed_in?
      
    else
      redirect_to user_session_path
    end
  end
  

  def new_guest
    user = User.find_or_create_by(email: 'guest@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
      # user.name = "ゲストユーザー"
  end
    sign_in user
    
    redirect_to root_path, notice: 'ゲストユーザーとしてログインしました。'
  end
end

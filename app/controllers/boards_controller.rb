class BoardsController < ApplicationController
  skip_before_action :require_login,only: %i[index]  

 def index
    @boards = Board.includes(:user).order(created_at: :desc)
 end

 def new
   @board = Board.new
 end

 def create
   @board  = current_user.boards.build(board_params)
   if @board.save
      redirect_to boards_path,success:"新規登録完了！"
   else
     flash.now[:danger] = "登録できませんでした"
     render :new,status: :unprocessable_entity
   end
 end

 def show
    @board = Board.find(params[:id])
    @comment = Comment.new
    @comments = @board.comments.includes(:user).order(created_at: :desc)
 end

 def edit
  @board = current_user.boards.find(params[:id])
 end

 def update
  @board = current_user.boards.find(params[:id])
   if @board.update(board_params)
    redirect_to board_path(@board), success: 'おすすめカフェを更新しました'
   else
    flash.now[:danger] = '更新できませんでした'
    render :edit, status: :unprocessable_entity
   end
 end

def destroy
 @board = Board.find(params[:id])
 @board.destroy
 redirect_to boards_path
end


 private

 def board_params
   params.require(:board).permit(:title, :body, :board_image, :board_image_cache)
 end

end

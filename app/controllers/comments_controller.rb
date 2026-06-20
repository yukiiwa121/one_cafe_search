class CommentsController < ApplicationController
  def create
    @board = Board.find(params[:board_id])

    comment = @board.comments.build(comment_params)
    comment.user = current_user.object

    if comment.save
      redirect_to board_path(@board), success: 'コメントを作成しました'
    else
      redirect_to board_path(@board), danger: 'コメントを作成できませんでした'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end

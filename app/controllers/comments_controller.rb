class CommentsController < ApplicationController
  def new
    logger.debug('fuck')
  end

  def create
  	@comment = Comment.new(comment_params)
  	@comment.save


    @threadBoard = ThreadBoard.find(params[:comment][:thread_board_id])
    @comments = @threadBoard.comments
    @comment = Comment.new
    redirect_to @threadBoard
  end


  private
	  def comment_params
        params[:comment].permit(:name, :comment, :thread_board_id);
      end  
end

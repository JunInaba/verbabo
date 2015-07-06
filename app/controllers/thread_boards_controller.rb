class ThreadBoardsController < ApplicationController
  def create 
  	@threadBoard = ThreadBoard.new(thread_params)
  	if @threadBoard.save
  	  redirect_to :action => "index"
  	else
  	  #fail create thread
  	  redirect_to :action => "index"
 	end
  end

  def new
  end

  def create_new_comment
    @comment = Comment.new(comment_params)
    @comment.save


    redirect_to :action => "show"
#    @threadBoard = ThreadBoard.find(params[:thread_board_id])

#    @comments = @threadBoard.comments
#    @comment = Comment.new


  end

  def show
  	@threadBoard = ThreadBoard.find(params[:id])
    @comments = @threadBoard.comments
    @comment = Comment.new

  end

  def index
  	@threadBoards = ThreadBoard.all
  	@threadBoard = ThreadBoard.new
  end

  private
	  def thread_params
        params[:thread_board].permit(:title);
      end

end

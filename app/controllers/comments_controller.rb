class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      redirect_to noodle_path(@comment.noodle)
    else
      @noodle = @comment.noodle
      @comments = @noodle.comments
      render "noodles/show"
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to noodle_path(@comment.noodle)
  end

  private
  def comment_params
    params.require(:comment).permit(:text, :noodle, :user).merge(user_id: current_user.id, noodle_id: params[:noodle_id])
  end

end

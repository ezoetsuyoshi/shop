class QuestionsController < ApplicationController

  def new
  	@question = Question.new
  end

  def create
  	@question = Question.new(question_params)
  	if @question.save
  	   redirect_to new_question_path, flash: {n: "送信されました"}
    else
      render :new
    end
  end

  def index
  	@questions = Question.all
  end

  def destroy
  	@question = Question.find(params[:id])
  	@question.destroy
  	redirect_to questions_path, flash: {n: "削除されました"}
  end


  private
  def question_params
  	params.require(:question).permit(:lastname,:firstname,:kana_lastname,:kana_firstname, :mail, :phone, :content)
  end
end

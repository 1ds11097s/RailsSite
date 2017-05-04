class AnswersController < ApplicationController
  before_action :set_answer, only: [:show, :edit, :update, :destroy]

  # GET /answers
  # GET /answers.json
  def index
    redirect_to '/questions'
  end

  # GET /answers/1
  # GET /answers/1.json
  def show
    redirect_to '/questions'
  end

  # GET /answers/new
  def new
    @answer = Answer.new
  end

  # GET /answers/1/edit
  def edit
    redirect_to '/questions'
  end

  # POST /answers
  # POST /answers.json
  def create
    end_counter = 10
    @answer = Answer.new(answer_params)

    respond_to do |format|
      if @answer.save
        num = Answer.where('question_id = ?', @answer.question_id).count
        if num >= end_counter then
          q = Question.find @answer.question_id
          q.finished = true
          q.save
        end
        format.html { redirect_to '/questions' + @answer.question_id.to_s }
        format.json { render :show, status: :created, location: @answer }
      else
        format.html { render :new }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /answers/1
  # PATCH/PUT /answers/1.json
  def update
    redirect_to '/questions'
  end

  # DELETE /answers/1
  # DELETE /answers/1.json
  def destroy
    redirect_to '/questions'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_answer
      @answer = Answer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def answer_params
      params.require(:answer).permit(:question_id, :content, :name)
    end
end
